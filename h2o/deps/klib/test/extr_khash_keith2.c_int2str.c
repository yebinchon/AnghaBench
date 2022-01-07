
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline void int2str(int c, int base, char *ret)
{
 const char *tab = "0123456789abcdef";
 if (c == 0) ret[0] = '0', ret[1] = 0;
 else {
  int l, x, y;
  char buf[16];
  for (l = 0, x = c < 0? -c : c; x > 0; x /= base) buf[l++] = tab[x%base];
  if (c < 0) buf[l++] = '-';
  for (x = l - 1, y = 0; x >= 0; --x) ret[y++] = buf[x];
  ret[y] = 0;
 }
}
