
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct sockaddr_s {int sa_family; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; } ;
struct hostent {scalar_t__* h_addr_list; } ;


 int AF_INET ;
 int PartialIPAddress (char*,struct sockaddr_s*) ;
 struct hostent* gethostbyname (char*) ;
 int htons (int ) ;
 scalar_t__ net_hostport ;

int WINS_GetAddrFromName( char *name, struct sockaddr_s *addr ){
 struct hostent *hostentry;

 if ( name[0] >= '0' && name[0] <= '9' ) {
  return PartialIPAddress( name, addr );
 }

 hostentry = gethostbyname( name );
 if ( !hostentry ) {
  return -1;
 }

 addr->sa_family = AF_INET;
 ( (struct sockaddr_in *)addr )->sin_port = htons( (u_short)net_hostport );
 ( (struct sockaddr_in *)addr )->sin_addr.s_addr = *(int *)hostentry->h_addr_list[0];

 return 0;
}
