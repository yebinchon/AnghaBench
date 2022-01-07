
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long long compute_offset (long long off, int headers) {
  if (headers < 0) {
    return off;
  }
  return off + 4096 * headers;
}
