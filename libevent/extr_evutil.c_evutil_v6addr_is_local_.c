
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {scalar_t__ s6_addr; } ;


 int memcmp (unsigned char const*,char const*,int) ;

int
evutil_v6addr_is_local_(const struct in6_addr *in)
{
 static const char ZEROES[] =
  "\x00\x00\x00\x00\x00\x00\x00\x00"
  "\x00\x00\x00\x00\x00\x00\x00\x00";

 const unsigned char *addr = (const unsigned char *)in->s6_addr;
 return !memcmp(addr, ZEROES, 8) ||
  ((addr[0] & 0xfe) == 0xfc) ||
  (addr[0] == 0xfe && (addr[1] & 0xc0) == 0x80) ||
  (addr[0] == 0xfe && (addr[1] & 0xc0) == 0xc0) ||
  (addr[0] == 0xff);
}
