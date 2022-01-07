
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* packet; scalar_t__ hlen; int hdr; } ;
typedef TYPE_1__ WSPipeIn ;
struct TYPE_5__ {struct TYPE_5__* data; } ;


 int free (TYPE_2__*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
clear_fifo_packet (WSPipeIn * pipein)
{
  memset (pipein->hdr, 0, sizeof (pipein->hdr));
  pipein->hlen = 0;

  if (pipein->packet == ((void*)0))
    return;

  if (pipein->packet->data)
    free (pipein->packet->data);
  free (pipein->packet);
  pipein->packet = ((void*)0);
}
