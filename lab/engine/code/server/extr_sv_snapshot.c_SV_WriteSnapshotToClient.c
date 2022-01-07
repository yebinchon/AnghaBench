
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_10__ {size_t outgoingSequence; } ;
struct TYPE_11__ {scalar_t__ deltaMessage; scalar_t__ state; scalar_t__ rateDelayed; scalar_t__ oldServerTime; int name; TYPE_1__ netchan; TYPE_3__* frames; } ;
typedef TYPE_2__ client_t ;
struct TYPE_12__ {scalar_t__ first_entity; int areabytes; int ps; int areabits; } ;
typedef TYPE_3__ clientSnapshot_t ;
struct TYPE_15__ {scalar_t__ time; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {scalar_t__ nextSnapshotEntities; scalar_t__ numSnapshotEntities; int snapFlagServerBit; } ;


 scalar_t__ CS_ACTIVE ;
 int Com_DPrintf (char*,int ) ;
 int MSG_WriteByte (int *,int) ;
 int MSG_WriteData (int *,int ,int) ;
 int MSG_WriteDeltaPlayerstate (int *,int *,int *) ;
 int MSG_WriteLong (int *,scalar_t__) ;
 int PACKET_BACKUP ;
 size_t PACKET_MASK ;
 int SNAPFLAG_NOT_ACTIVE ;
 int SNAPFLAG_RATE_DELAYED ;
 int SV_EmitPacketEntities (TYPE_3__*,TYPE_3__*,int *) ;
 TYPE_6__ sv ;
 TYPE_5__* sv_padPackets ;
 int svc_nop ;
 int svc_snapshot ;
 TYPE_4__ svs ;

__attribute__((used)) static void SV_WriteSnapshotToClient( client_t *client, msg_t *msg ) {
 clientSnapshot_t *frame, *oldframe;
 int lastframe;
 int i;
 int snapFlags;


 frame = &client->frames[ client->netchan.outgoingSequence & PACKET_MASK ];


 if ( client->deltaMessage <= 0 || client->state != CS_ACTIVE ) {

  oldframe = ((void*)0);
  lastframe = 0;
 } else if ( client->netchan.outgoingSequence - client->deltaMessage
  >= (PACKET_BACKUP - 3) ) {

  Com_DPrintf ("%s: Delta request from out of date packet.\n", client->name);
  oldframe = ((void*)0);
  lastframe = 0;
 } else {

  oldframe = &client->frames[ client->deltaMessage & PACKET_MASK ];
  lastframe = client->netchan.outgoingSequence - client->deltaMessage;


  if ( oldframe->first_entity <= svs.nextSnapshotEntities - svs.numSnapshotEntities ) {
   Com_DPrintf ("%s: Delta request from out of date entities.\n", client->name);
   oldframe = ((void*)0);
   lastframe = 0;
  }
 }

 MSG_WriteByte (msg, svc_snapshot);







 if( client->oldServerTime ) {






  MSG_WriteLong (msg, sv.time + client->oldServerTime);
 } else {
  MSG_WriteLong (msg, sv.time);
 }


 MSG_WriteByte (msg, lastframe);

 snapFlags = svs.snapFlagServerBit;
 if ( client->rateDelayed ) {
  snapFlags |= SNAPFLAG_RATE_DELAYED;
 }
 if ( client->state != CS_ACTIVE ) {
  snapFlags |= SNAPFLAG_NOT_ACTIVE;
 }

 MSG_WriteByte (msg, snapFlags);


 MSG_WriteByte (msg, frame->areabytes);
 MSG_WriteData (msg, frame->areabits, frame->areabytes);


 if ( oldframe ) {
  MSG_WriteDeltaPlayerstate( msg, &oldframe->ps, &frame->ps );
 } else {
  MSG_WriteDeltaPlayerstate( msg, ((void*)0), &frame->ps );
 }


 SV_EmitPacketEntities (oldframe, frame, msg);


 if ( sv_padPackets->integer ) {
  for ( i = 0 ; i < sv_padPackets->integer ; i++ ) {
   MSG_WriteByte (msg, svc_nop);
  }
 }
}
