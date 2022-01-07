
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* next; int clientCommandString; int msgBuffer; int msg; } ;
typedef TYPE_1__ netchan_buffer_t ;
struct TYPE_12__ {int data; int cursize; } ;
typedef TYPE_2__ msg_t ;
struct TYPE_14__ {scalar_t__ unsentFragments; } ;
struct TYPE_13__ {TYPE_8__ netchan; int lastClientCommandString; scalar_t__ compat; TYPE_1__** netchan_end_queue; scalar_t__ netchan_start_queue; } ;
typedef TYPE_3__ client_t ;


 int Com_DPrintf (char*) ;
 int MSG_Copy (int *,int ,int,TYPE_2__*) ;
 int MSG_WriteByte (TYPE_2__*,int ) ;
 int Netchan_Transmit (TYPE_8__*,int ,int ) ;
 int Q_strncpyz (int ,int ,int) ;
 int SV_Netchan_Encode (TYPE_3__*,TYPE_2__*,int ) ;
 scalar_t__ Z_Malloc (int) ;
 int svc_EOF ;

void SV_Netchan_Transmit( client_t *client, msg_t *msg)
{
 MSG_WriteByte( msg, svc_EOF );

 if(client->netchan.unsentFragments || client->netchan_start_queue)
 {
  netchan_buffer_t *netbuf;
  Com_DPrintf("#462 SV_Netchan_Transmit: unsent fragments, stacked\n");
  netbuf = (netchan_buffer_t *) Z_Malloc(sizeof(netchan_buffer_t));

  MSG_Copy(&netbuf->msg, netbuf->msgBuffer, sizeof( netbuf->msgBuffer ), msg);







  netbuf->next = ((void*)0);

  *client->netchan_end_queue = netbuf;
  client->netchan_end_queue = &(*client->netchan_end_queue)->next;
 }
 else
 {




  Netchan_Transmit( &client->netchan, msg->cursize, msg->data );
 }
}
