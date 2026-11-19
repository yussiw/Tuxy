
#!/usr/bin/env bash
set -euo pipefail

echo "Construindo Tuxy 0.1..."

lb config \
  --distribution trixie \
  --architectures amd64 \
  --binary-images iso-hybrid \
  --debian-installer none \
  --archive-areas "main contrib non-free non-free-firmware" \
  --bootappend-live "boot=live components hostname=tuxy"

lb build

echo "Tuxy foi compilado!"
