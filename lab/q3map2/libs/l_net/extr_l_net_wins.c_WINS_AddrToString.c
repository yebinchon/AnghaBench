
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_s {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;


 int ntohl (int ) ;
 int ntohs (int ) ;
 int sprintf (char*,char*,int,int,int,int,int) ;

char *WINS_AddrToString( struct sockaddr_s *addr ){
 static char buffer[22];
 int haddr;

 haddr = ntohl( ( (struct sockaddr_in *)addr )->sin_addr.s_addr );
 sprintf( buffer, "%d.%d.%d.%d:%d", ( haddr >> 24 ) & 0xff, ( haddr >> 16 ) & 0xff, ( haddr >> 8 ) & 0xff, haddr & 0xff, ntohs( ( (struct sockaddr_in *)addr )->sin_port ) );
 return buffer;
}
