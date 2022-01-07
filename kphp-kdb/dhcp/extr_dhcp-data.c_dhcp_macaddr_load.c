
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long long dhcp_macaddr_load (unsigned char *s) {
  unsigned long r = 0;
  int i = 0;
  do {
    r <<= 8;
    r |= s[i];
  } while (++i < 6);
  return r;
}
