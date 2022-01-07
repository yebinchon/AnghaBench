
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_s {scalar_t__ sa_family; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; } ;



int WINS_AddrCompare( struct sockaddr_s *addr1, struct sockaddr_s *addr2 ){
 if ( addr1->sa_family != addr2->sa_family ) {
  return -1;
 }

 if ( ( (struct sockaddr_in *)addr1 )->sin_addr.s_addr != ( (struct sockaddr_in *)addr2 )->sin_addr.s_addr ) {
  return -1;
 }

 if ( ( (struct sockaddr_in *)addr1 )->sin_port != ( (struct sockaddr_in *)addr2 )->sin_port ) {
  return 1;
 }

 return 0;
}
