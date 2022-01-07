
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int cursize; } ;
typedef TYPE_3__ msg_t ;
struct TYPE_10__ {size_t outgoingSequence; } ;
struct TYPE_13__ {TYPE_1__ netchan; TYPE_2__* frames; } ;
typedef TYPE_4__ client_t ;
struct TYPE_14__ {int time; } ;
struct TYPE_11__ {int messageAcked; int messageSent; int messageSize; } ;


 size_t PACKET_MASK ;
 int SV_Netchan_Transmit (TYPE_4__*,TYPE_3__*) ;
 TYPE_5__ svs ;

void SV_SendMessageToClient(msg_t *msg, client_t *client)
{

 client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageSize = msg->cursize;
 client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageSent = svs.time;
 client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageAcked = -1;


 SV_Netchan_Transmit(client, msg);
}
