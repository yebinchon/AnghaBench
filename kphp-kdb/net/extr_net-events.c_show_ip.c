
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sprintf (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

char *show_ip (unsigned ip) {
  static char abuf[256], *ptr = abuf;
  char *res;
  if (ptr > abuf + 200) {
    ptr = abuf;
  }
  res = ptr;
  ptr += sprintf (ptr, "%d.%d.%d.%d", ip >> 24, (ip >> 16) & 0xff, (ip >> 8) & 0xff, ip & 0xff) + 1;
  return res;
}
