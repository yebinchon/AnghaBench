
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linger {int l_onoff; scalar_t__ l_linger; } ;
typedef int one ;
typedef int l ;
typedef int evutil_socket_t ;


 int SOL_SOCKET ;
 int SO_LINGER ;
 int SO_REUSEADDR ;
 int perror (char*) ;
 scalar_t__ setsockopt (int ,int ,int ,void*,int) ;

__attribute__((used)) static void
frob_socket(evutil_socket_t sock)
{



 int one = 1;
 if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, (void*)&one, sizeof(one))<0)
  perror("setsockopt(SO_REUSEADDR)");






}
