
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sadr ;
typedef int sa_family_t ;
typedef int qboolean ;
typedef int netadrtype_t ;
typedef int netadr_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;


 int SockadrToNetadr (struct sockaddr*,int *) ;
 int Sys_StringToSockaddr (char const*,struct sockaddr*,int,int ) ;
 int qfalse ;
 int qtrue ;

qboolean Sys_StringToAdr( const char *s, netadr_t *a, netadrtype_t family ) {
 struct sockaddr_storage sadr;
 sa_family_t fam;

 switch(family)
 {
  case 129:
   fam = AF_INET;
  break;
  case 128:
   fam = AF_INET6;
  break;
  default:
   fam = AF_UNSPEC;
  break;
 }
 if( !Sys_StringToSockaddr(s, (struct sockaddr *) &sadr, sizeof(sadr), fam ) ) {
  return qfalse;
 }

 SockadrToNetadr( (struct sockaddr *) &sadr, a );
 return qtrue;
}
