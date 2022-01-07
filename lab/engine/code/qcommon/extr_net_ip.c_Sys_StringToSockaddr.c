
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int ai_addrlen; int ai_addr; int ai_socktype; int ai_family; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_socktype; int ai_family; } ;
typedef int sa_family_t ;
typedef int qboolean ;
typedef int hints ;
struct TYPE_2__ {int integer; } ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int Com_Printf (char*,char const*,...) ;
 int NET_ENABLEV4 ;
 int NET_ENABLEV6 ;
 int NET_PRIOV6 ;
 int SOCK_DGRAM ;
 struct sockaddr* SearchAddrInfo (struct sockaddr*,int ) ;
 int freeaddrinfo (struct sockaddr*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int *,struct sockaddr*,struct sockaddr**) ;
 int memcpy (struct sockaddr*,int ,int) ;
 int memset (struct sockaddr*,char,int) ;
 TYPE_1__* net_enabled ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean Sys_StringToSockaddr(const char *s, struct sockaddr *sadr, int sadr_len, sa_family_t family)
{
 struct addrinfo hints;
 struct addrinfo *res = ((void*)0);
 struct addrinfo *search = ((void*)0);
 struct addrinfo *hintsp;
 int retval;

 memset(sadr, '\0', sizeof(*sadr));
 memset(&hints, '\0', sizeof(hints));

 hintsp = &hints;
 hintsp->ai_family = family;
 hintsp->ai_socktype = SOCK_DGRAM;

 retval = getaddrinfo(s, ((void*)0), hintsp, &res);

 if(!retval)
 {
  if(family == AF_UNSPEC)
  {

   if(net_enabled->integer & NET_PRIOV6)
   {
    if(net_enabled->integer & NET_ENABLEV6)
     search = SearchAddrInfo(res, AF_INET6);

    if(!search && (net_enabled->integer & NET_ENABLEV4))
     search = SearchAddrInfo(res, AF_INET);
   }
   else
   {
    if(net_enabled->integer & NET_ENABLEV4)
     search = SearchAddrInfo(res, AF_INET);

    if(!search && (net_enabled->integer & NET_ENABLEV6))
     search = SearchAddrInfo(res, AF_INET6);
   }
  }
  else
   search = SearchAddrInfo(res, family);

  if(search)
  {
   if(search->ai_addrlen > sadr_len)
    search->ai_addrlen = sadr_len;

   memcpy(sadr, search->ai_addr, search->ai_addrlen);
   freeaddrinfo(res);

   return qtrue;
  }
  else
   Com_Printf("Sys_StringToSockaddr: Error resolving %s: No address of required type found.\n", s);
 }
 else
  Com_Printf("Sys_StringToSockaddr: Error resolving %s: %s\n", s, gai_strerror(retval));

 if(res)
  freeaddrinfo(res);

 return qfalse;
}
