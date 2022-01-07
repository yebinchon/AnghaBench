
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct sockaddr_s {int sa_family; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; } ;


 int AF_INET ;
 int htonl (int) ;
 int htons (int ) ;
 int myAddr ;
 scalar_t__ net_hostport ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int PartialIPAddress( char *in, struct sockaddr_s *hostaddr ){
 char buff[256];
 char *b;
 int addr;
 int num;
 int mask;

 buff[0] = '.';
 b = buff;
 strcpy( buff + 1, in );
 if ( buff[1] == '.' ) {
  b++;
 }

 addr = 0;
 mask = -1;
 while ( *b == '.' )
 {
  num = 0;
  if ( *++b < '0' || *b > '9' ) {
   return -1;
  }
  while ( !( *b < '0' || *b > '9' ) )
   num = num * 10 + *( b++ ) - '0';
  mask <<= 8;
  addr = ( addr << 8 ) + num;
 }

 hostaddr->sa_family = AF_INET;
 ( (struct sockaddr_in *)hostaddr )->sin_port = htons( (u_short)net_hostport );
 ( (struct sockaddr_in *)hostaddr )->sin_addr.s_addr = ( myAddr & htonl( mask ) ) | htonl( addr );

 return 0;
}
