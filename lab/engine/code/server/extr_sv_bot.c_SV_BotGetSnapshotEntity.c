
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t outgoingSequence; } ;
struct TYPE_8__ {TYPE_2__ netchan; TYPE_4__* frames; } ;
typedef TYPE_3__ client_t ;
struct TYPE_9__ {int num_entities; int first_entity; } ;
typedef TYPE_4__ clientSnapshot_t ;
struct TYPE_10__ {int numSnapshotEntities; TYPE_1__* snapshotEntities; TYPE_3__* clients; } ;
struct TYPE_6__ {int number; } ;


 size_t PACKET_MASK ;
 TYPE_5__ svs ;

int SV_BotGetSnapshotEntity( int client, int sequence ) {
 client_t *cl;
 clientSnapshot_t *frame;

 cl = &svs.clients[client];
 frame = &cl->frames[cl->netchan.outgoingSequence & PACKET_MASK];
 if (sequence < 0 || sequence >= frame->num_entities) {
  return -1;
 }
 return svs.snapshotEntities[(frame->first_entity + sequence) % svs.numSnapshotEntities].number;
}
