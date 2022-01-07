
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_s {int dummy; } ;
struct sockaddr_in {int sin_port; } ;


 int ntohs (int ) ;

int WINS_GetSocketPort( struct sockaddr_s *addr ){
 return ntohs( ( (struct sockaddr_in *)addr )->sin_port );
}
