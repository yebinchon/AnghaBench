
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ netchan_buffer_t ;
struct TYPE_6__ {TYPE_1__* netchan_start_queue; TYPE_1__** netchan_end_queue; } ;
typedef TYPE_2__ client_t ;


 int Z_Free (TYPE_1__*) ;

void SV_Netchan_FreeQueue(client_t *client)
{
 netchan_buffer_t *netbuf, *next;

 for(netbuf = client->netchan_start_queue; netbuf; netbuf = next)
 {
  next = netbuf->next;
  Z_Free(netbuf);
 }

 client->netchan_start_queue = ((void*)0);
 client->netchan_end_queue = &client->netchan_start_queue;
}
