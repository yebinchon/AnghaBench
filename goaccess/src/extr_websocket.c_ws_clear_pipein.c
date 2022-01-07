
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int * packet; } ;
typedef TYPE_1__ WSPipeIn ;
typedef int WSPacket ;
struct TYPE_6__ {scalar_t__ pipein; } ;


 int F_OK ;
 int access (scalar_t__,int ) ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int unlink (scalar_t__) ;
 int ws_clear_fifo_packet (int *) ;
 TYPE_2__ wsconfig ;

__attribute__((used)) static void
ws_clear_pipein (WSPipeIn * pipein)
{
  WSPacket **packet = &pipein->packet;
  if (!pipein)
    return;

  if (pipein->fd != -1)
    close (pipein->fd);

  ws_clear_fifo_packet (*packet);
  free (pipein);

  if (wsconfig.pipein && access (wsconfig.pipein, F_OK) != -1)
    unlink (wsconfig.pipein);
}
