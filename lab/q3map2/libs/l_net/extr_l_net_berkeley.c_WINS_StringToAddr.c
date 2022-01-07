
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct sockaddr_s {int sa_family; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;


 int AF_INET ;
 int htonl (int) ;
 int htons (int ) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*) ;

int WINS_StringToAddr( char *string, struct sockaddr_s *addr ){
 int ha1, ha2, ha3, ha4, hp;
 int ipaddr;

 sscanf( string, "%d.%d.%d.%d:%d", &ha1, &ha2, &ha3, &ha4, &hp );
 ipaddr = ( ha1 << 24 ) | ( ha2 << 16 ) | ( ha3 << 8 ) | ha4;

 addr->sa_family = AF_INET;
 ( (struct sockaddr_in *)addr )->sin_addr.s_addr = htonl( ipaddr );
 ( (struct sockaddr_in *)addr )->sin_port = htons( (u_short)hp );
 return 0;
}
