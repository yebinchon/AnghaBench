
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
typedef int ev_ssize_t ;


 int AF_INET6 ;
 scalar_t__ CHAR_IS_UNRESERVED (char const) ;
 scalar_t__ EVUTIL_ISXDIGIT_ (char const) ;
 int SUBDELIMS ;
 int evutil_inet_pton (int ,char*,struct in6_addr*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strchr (int ,char const) ;

__attribute__((used)) static int
bracket_addr_ok(const char *s, const char *eos)
{
 if (s + 3 > eos || *s != '[' || *(eos-1) != ']')
  return 0;
 if (s[1] == 'v') {



  s += 2;
  --eos;
  if (!EVUTIL_ISXDIGIT_(*s))
   return 0;
  while (s < eos && *s != '.') {
   if (EVUTIL_ISXDIGIT_(*s))
    ++s;
   else
    return 0;
  }
  if (*s != '.')
   return 0;
  ++s;
  while (s < eos) {
   if (CHAR_IS_UNRESERVED(*s) ||
       strchr(SUBDELIMS, *s) ||
       *s == ':')
    ++s;
   else
    return 0;
  }
  return 2;
 } else {

  char buf[64];
  ev_ssize_t n_chars = eos-s-2;
  struct in6_addr in6;
  if (n_chars >= 64)
   return 0;
  memcpy(buf, s+1, n_chars);
  buf[n_chars]='\0';
  return (evutil_inet_pton(AF_INET6,buf,&in6)==1) ? 1 : 0;
 }
}
