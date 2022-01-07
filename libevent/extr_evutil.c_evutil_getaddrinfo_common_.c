
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int* s6_addr; } ;
struct sockaddr_in6 {unsigned int sin6_scope_id; void* sin_port; void* sin_family; TYPE_2__ sin_addr; void* sin6_port; void* sin6_family; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {unsigned int sin6_scope_id; void* sin_port; void* sin_family; TYPE_2__ sin_addr; void* sin6_port; void* sin6_family; TYPE_1__ sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct evutil_addrinfo {scalar_t__ ai_family; int ai_flags; int ai_protocol; } ;
typedef int sin6 ;
typedef int sin ;


 void* AF_INET ;
 void* AF_INET6 ;
 int EVUTIL_AI_NUMERICHOST ;
 int EVUTIL_AI_PASSIVE ;
 int EVUTIL_EAI_FAMILY ;
 int EVUTIL_EAI_MEMORY ;
 int EVUTIL_EAI_NEED_RESOLVE ;
 int EVUTIL_EAI_NONAME ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_UNSPEC ;
 struct evutil_addrinfo* evutil_addrinfo_append_ (struct evutil_addrinfo*,struct evutil_addrinfo*) ;
 int evutil_freeaddrinfo (struct evutil_addrinfo*) ;
 int evutil_getaddrinfo_infer_protocols (struct evutil_addrinfo*) ;
 int evutil_inet_pton (void*,char const*,TYPE_2__*) ;
 int evutil_inet_pton_scope (void*,char const*,TYPE_1__*,unsigned int*) ;
 struct evutil_addrinfo* evutil_new_addrinfo_ (struct sockaddr*,int,struct evutil_addrinfo*) ;
 int evutil_parse_servname (char const*,char const*,struct evutil_addrinfo*) ;
 char* evutil_unparse_protoname (int ) ;
 int htonl (int) ;
 void* htons (int) ;
 int memset (struct sockaddr_in6*,int ,int) ;

int
evutil_getaddrinfo_common_(const char *nodename, const char *servname,
    struct evutil_addrinfo *hints, struct evutil_addrinfo **res, int *portnum)
{
 int port = 0;
 unsigned int if_index;
 const char *pname;

 if (nodename == ((void*)0) && servname == ((void*)0))
  return EVUTIL_EAI_NONAME;


 if (hints->ai_family != PF_UNSPEC && hints->ai_family != PF_INET &&
     hints->ai_family != PF_INET6)
  return EVUTIL_EAI_FAMILY;

 evutil_getaddrinfo_infer_protocols(hints);


 pname = evutil_unparse_protoname(hints->ai_protocol);
 if (servname) {


  port = evutil_parse_servname(servname, pname, hints);
  if (port < 0) {
   return EVUTIL_EAI_NONAME;
  }
 }



 if (nodename == ((void*)0)) {
  struct evutil_addrinfo *res4=((void*)0), *res6=((void*)0);
  if (hints->ai_family != PF_INET) {
   struct sockaddr_in6 sin6;
   memset(&sin6, 0, sizeof(sin6));
   sin6.sin6_family = AF_INET6;
   sin6.sin6_port = htons(port);
   if (hints->ai_flags & EVUTIL_AI_PASSIVE) {

   } else {

    sin6.sin6_addr.s6_addr[15] = 1;
   }
   res6 = evutil_new_addrinfo_((struct sockaddr*)&sin6,
       sizeof(sin6), hints);
   if (!res6)
    return EVUTIL_EAI_MEMORY;
  }

  if (hints->ai_family != PF_INET6) {
   struct sockaddr_in sin;
   memset(&sin, 0, sizeof(sin));
   sin.sin_family = AF_INET;
   sin.sin_port = htons(port);
   if (hints->ai_flags & EVUTIL_AI_PASSIVE) {

   } else {

    sin.sin_addr.s_addr = htonl(0x7f000001);
   }
   res4 = evutil_new_addrinfo_((struct sockaddr*)&sin,
       sizeof(sin), hints);
   if (!res4) {
    if (res6)
     evutil_freeaddrinfo(res6);
    return EVUTIL_EAI_MEMORY;
   }
  }
  *res = evutil_addrinfo_append_(res4, res6);
  return 0;
 }




 if (hints->ai_family == PF_INET6 || hints->ai_family == PF_UNSPEC) {
  struct sockaddr_in6 sin6;
  memset(&sin6, 0, sizeof(sin6));
  if (1 == evutil_inet_pton_scope(
   AF_INET6, nodename, &sin6.sin6_addr, &if_index)) {

   sin6.sin6_family = AF_INET6;
   sin6.sin6_port = htons(port);
   sin6.sin6_scope_id = if_index;
   *res = evutil_new_addrinfo_((struct sockaddr*)&sin6,
       sizeof(sin6), hints);
   if (!*res)
    return EVUTIL_EAI_MEMORY;
   return 0;
  }
 }


 if (hints->ai_family == PF_INET || hints->ai_family == PF_UNSPEC) {
  struct sockaddr_in sin;
  memset(&sin, 0, sizeof(sin));
  if (1==evutil_inet_pton(AF_INET, nodename, &sin.sin_addr)) {

   sin.sin_family = AF_INET;
   sin.sin_port = htons(port);
   *res = evutil_new_addrinfo_((struct sockaddr*)&sin,
       sizeof(sin), hints);
   if (!*res)
    return EVUTIL_EAI_MEMORY;
   return 0;
  }
 }




 if ((hints->ai_flags & EVUTIL_AI_NUMERICHOST)) {

  return EVUTIL_EAI_NONAME;
 }
 *portnum = port;
 return EVUTIL_EAI_NEED_RESOLVE;
}
