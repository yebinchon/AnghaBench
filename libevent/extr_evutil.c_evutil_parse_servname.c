
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;
struct evutil_addrinfo {int ai_flags; } ;


 int EVUTIL_AI_NUMERICSERV ;
 struct servent* getservbyname (char const*,char const*) ;
 int ntohs (int ) ;
 int parse_numeric_servname (char const*) ;

__attribute__((used)) static int
evutil_parse_servname(const char *servname, const char *protocol,
    const struct evutil_addrinfo *hints)
{
 int n = parse_numeric_servname(servname);
 if (n>=0)
  return n;
 return -1;
}
