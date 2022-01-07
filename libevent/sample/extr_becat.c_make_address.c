
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct evutil_addrinfo {int ai_flags; int ai_addrlen; int ai_addr; int ai_socktype; int ai_family; } ;
typedef int strport ;
typedef int hints ;
typedef int ev_uint16_t ;
typedef scalar_t__ ev_socklen_t ;


 int AF_UNSPEC ;
 int EVUTIL_AI_ADDRCONFIG ;
 int EVUTIL_AI_PASSIVE ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 int evutil_freeaddrinfo (struct evutil_addrinfo*) ;
 int evutil_getaddrinfo (char const*,char*,struct evutil_addrinfo*,struct evutil_addrinfo**) ;
 int evutil_snprintf (char*,int,char*,int ) ;
 int memcpy (struct sockaddr_storage*,int ,int) ;
 int memset (struct evutil_addrinfo*,int ,int) ;

__attribute__((used)) static ev_socklen_t
make_address(struct sockaddr_storage *ss, const char *address, ev_uint16_t port)
{
 struct evutil_addrinfo *ai = ((void*)0);
 struct evutil_addrinfo hints;
 char strport[NI_MAXSERV];
 int ai_result;
 ev_socklen_t ret = 0;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = EVUTIL_AI_PASSIVE|EVUTIL_AI_ADDRCONFIG;
 evutil_snprintf(strport, sizeof(strport), "%d", port);
 if ((ai_result = evutil_getaddrinfo(address, strport, &hints, &ai)) != 0) {
  return 0;
 }
 if (!ai)
  return 0;
 if (ai->ai_addrlen > sizeof(*ss)) {
  evutil_freeaddrinfo(ai);
  return 0;
 }

 memcpy(ss, ai->ai_addr, ai->ai_addrlen);

 ret = (ev_socklen_t)ai->ai_addrlen;
 evutil_freeaddrinfo(ai);
 return ret;
}
