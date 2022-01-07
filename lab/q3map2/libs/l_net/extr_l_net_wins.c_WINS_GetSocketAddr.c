
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_s {int dummy; } ;
struct TYPE_2__ {unsigned int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;


 int getsockname (int,struct sockaddr*,int*) ;
 unsigned int inet_addr (char*) ;
 int memset (struct sockaddr_s*,int ,int) ;
 unsigned int myAddr ;

int WINS_GetSocketAddr( int socket, struct sockaddr_s *addr ){
 int addrlen = sizeof( struct sockaddr_s );
 unsigned int a;

 memset( addr, 0, sizeof( struct sockaddr_s ) );
 getsockname( socket, (struct sockaddr *)addr, &addrlen );
 a = ( (struct sockaddr_in *)addr )->sin_addr.s_addr;
 if ( a == 0 || a == inet_addr( "127.0.0.1" ) ) {
  ( (struct sockaddr_in *)addr )->sin_addr.s_addr = myAddr;
 }

 return 0;
}
