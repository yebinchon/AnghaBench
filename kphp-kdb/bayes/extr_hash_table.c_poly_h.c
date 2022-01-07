
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int poly_h (void *h, int size) {
  unsigned long long res = 0;
  int i;
  for (i = 0; i < 4; i++) {
    res *= 239017;
    res ^= ((long)h >> ((sizeof (long) / 4) * i)) & (0xffff);
    res *= 999987;
    res ^= (size >> (8 * i)) & (0xffff);
  }

  return res >> 16;
}
