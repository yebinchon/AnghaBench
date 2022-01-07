
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WSServer ;
struct TYPE_7__ {int fd; } ;
typedef TYPE_1__ WSPipeOut ;
struct TYPE_8__ {int fd; } ;
typedef TYPE_2__ WSPipeIn ;
struct TYPE_9__ {int wfds; int rfds; } ;


 scalar_t__ FD_ISSET (int,int *) ;
 TYPE_6__ fdstate ;
 int handle_fifo (int *) ;
 int ws_write_fifo (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void
ws_fifos (WSServer * server, WSPipeIn * pi, WSPipeOut * po)
{

  if (pi->fd != -1 && FD_ISSET (pi->fd, &fdstate.rfds))
    handle_fifo (server);

  if (po->fd != -1 && FD_ISSET (po->fd, &fdstate.wfds))
    ws_write_fifo (po, ((void*)0), 0);
}
