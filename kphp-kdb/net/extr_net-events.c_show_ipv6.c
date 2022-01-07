
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ conv_ipv6_internal (unsigned short const*,char*) ;

char *show_ipv6 (const unsigned char ipv6[16]) {
  static char abuf[256], *ptr = abuf;
  char *res;
  if (ptr > abuf + 200) {
    ptr = abuf;
  }
  res = ptr;
  ptr += conv_ipv6_internal ((const unsigned short *) ipv6, ptr) + 1;
  return res;
}
