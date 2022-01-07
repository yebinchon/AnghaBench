
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct in6_addr {int* s6_addr; } ;
typedef int ev_uint16_t ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ EVUTIL_ISDIGIT_ (char const) ;
 scalar_t__ EVUTIL_ISXDIGIT_ (char const) ;
 int htonl (unsigned int) ;
 int inet_pton (int,char const*,void*) ;
 int memmove (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,char*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 long strtol (char const*,char**,int) ;

int
evutil_inet_pton(int af, const char *src, void *dst)
{



 if (af == AF_INET) {
  unsigned a,b,c,d;
  char more;
  struct in_addr *addr = dst;
  if (sscanf(src, "%u.%u.%u.%u%c", &a,&b,&c,&d,&more) != 4)
   return 0;
  if (a > 255) return 0;
  if (b > 255) return 0;
  if (c > 255) return 0;
  if (d > 255) return 0;
  addr->s_addr = htonl((a<<24) | (b<<16) | (c<<8) | d);
  return 1;
 } else {
  return -1;
 }

}
