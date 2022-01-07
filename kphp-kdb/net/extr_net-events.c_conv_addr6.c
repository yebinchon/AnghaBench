
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conv_ipv6_internal (unsigned short const*,char*) ;

char *conv_addr6 (const unsigned char a[16], char *buf) {
  static char abuf[64];
  if (!buf) {
    buf = abuf;
  }
  conv_ipv6_internal ((const unsigned short *) a, buf);
  return buf;
}
