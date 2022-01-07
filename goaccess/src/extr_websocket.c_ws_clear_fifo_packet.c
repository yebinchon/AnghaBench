
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ WSPacket ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
ws_clear_fifo_packet (WSPacket * packet)
{
  if (!packet)
    return;

  if (packet->data)
    free (packet->data);
  free (packet);
}
