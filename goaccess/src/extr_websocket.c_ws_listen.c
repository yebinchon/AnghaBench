
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WSServer ;
struct TYPE_2__ {int wfds; int rfds; } ;


 scalar_t__ FD_ISSET (int,int *) ;
 TYPE_1__ fdstate ;
 int handle_accept (int,int *) ;
 int handle_reads (int,int *) ;
 int handle_writes (int,int *) ;

__attribute__((used)) static void
ws_listen (int listener, int conn, WSServer * server)
{

  if (FD_ISSET (conn, &fdstate.rfds) && conn == listener)
    handle_accept (listener, server);

  else if (FD_ISSET (conn, &fdstate.rfds) && conn != listener)
    handle_reads (conn, server);

  else if (FD_ISSET (conn, &fdstate.wfds) && conn != listener)
    handle_writes (conn, server);
}
