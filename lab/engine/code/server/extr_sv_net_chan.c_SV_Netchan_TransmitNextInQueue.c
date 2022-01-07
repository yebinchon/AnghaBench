
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int data; int cursize; } ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_6__ msg; int clientCommandString; } ;
typedef TYPE_1__ netchan_buffer_t ;
struct TYPE_8__ {TYPE_1__* netchan_start_queue; TYPE_1__** netchan_end_queue; int netchan; scalar_t__ compat; } ;
typedef TYPE_2__ client_t ;


 int Com_DPrintf (char*) ;
 int Netchan_Transmit (int *,int ,int ) ;
 int SV_Netchan_Encode (TYPE_2__*,TYPE_6__*,int ) ;
 int Z_Free (TYPE_1__*) ;

void SV_Netchan_TransmitNextInQueue(client_t *client)
{
 netchan_buffer_t *netbuf;

 Com_DPrintf("#462 Netchan_TransmitNextFragment: popping a queued message for transmit\n");
 netbuf = client->netchan_start_queue;






 Netchan_Transmit(&client->netchan, netbuf->msg.cursize, netbuf->msg.data);


 client->netchan_start_queue = netbuf->next;
 if(!client->netchan_start_queue)
 {
  Com_DPrintf("#462 Netchan_TransmitNextFragment: emptied queue\n");
  client->netchan_end_queue = &client->netchan_start_queue;
 }
 else
  Com_DPrintf("#462 Netchan_TransmitNextFragment: remaining queued message\n");

 Z_Free(netbuf);
}
