
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct sockaddr_s {int dummy; } ;
struct sockaddr_in {int sin_port; } ;


 int htons (int ) ;

int WINS_SetSocketPort( struct sockaddr_s *addr, int port ){
 ( (struct sockaddr_in *)addr )->sin_port = htons( (u_short)port );
 return 0;
}
