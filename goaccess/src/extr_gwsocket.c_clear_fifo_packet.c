
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* data; } ;
struct TYPE_4__ {TYPE_2__* packet; scalar_t__ hlen; int hdr; } ;
typedef TYPE_1__ GWSReader ;


 int free (TYPE_2__*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
clear_fifo_packet (GWSReader * gwserver)
{
  memset (gwserver->hdr, 0, sizeof (gwserver->hdr));
  gwserver->hlen = 0;

  if (gwserver->packet == ((void*)0))
    return;

  if (gwserver->packet->data)
    free (gwserver->packet->data);
  free (gwserver->packet);
  gwserver->packet = ((void*)0);
}
