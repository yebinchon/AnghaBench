
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {scalar_t__ ai_protocol; scalar_t__ ai_socktype; } ;


 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;

__attribute__((used)) static void
evutil_getaddrinfo_infer_protocols(struct evutil_addrinfo *hints)
{

 if (!hints->ai_protocol && hints->ai_socktype) {
  if (hints->ai_socktype == SOCK_DGRAM)
   hints->ai_protocol = IPPROTO_UDP;
  else if (hints->ai_socktype == SOCK_STREAM)
   hints->ai_protocol = IPPROTO_TCP;
 }


 if (!hints->ai_socktype && hints->ai_protocol) {
  if (hints->ai_protocol == IPPROTO_UDP)
   hints->ai_socktype = SOCK_DGRAM;
  else if (hints->ai_protocol == IPPROTO_TCP)
   hints->ai_socktype = SOCK_STREAM;




 }
}
