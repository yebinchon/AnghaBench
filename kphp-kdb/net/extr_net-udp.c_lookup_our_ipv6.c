
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_OUR_IPS ;
 int fill_outbound_control (int) ;
 int memcmp (int*,unsigned char const*,int) ;
 int memcpy (int*,unsigned char const*,int) ;
 int** our_ipv6 ;
 int used_our_ipv6 ;

int lookup_our_ipv6 (const unsigned char ipv6[16]) {
  int i;
  for (i = 1; i <= used_our_ipv6; i += 2) {
    if (!memcmp (our_ipv6[i], ipv6, 16)) {
      return i;
    }
  }
  if (!used_our_ipv6) {
    used_our_ipv6 = 1;
    our_ipv6[1][15] = 1;
    fill_outbound_control (1);
    if (!memcmp (our_ipv6[1], ipv6, 16)) {
      return 1;
    }
  } else if (used_our_ipv6 >= MAX_OUR_IPS - 2) {
    return 0;
  }
  used_our_ipv6 += 2;
  memcpy (our_ipv6[used_our_ipv6], ipv6, 16);
  fill_outbound_control (used_our_ipv6);
  return used_our_ipv6;
}
