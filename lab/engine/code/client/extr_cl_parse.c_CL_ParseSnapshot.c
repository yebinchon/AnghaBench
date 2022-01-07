
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int newSnap ;
typedef int msg_t ;
struct TYPE_22__ {scalar_t__ commandTime; } ;
struct TYPE_16__ {int messageNum; int deltaNum; scalar_t__ parseEntitiesNum; int ping; TYPE_9__ ps; void* valid; int areamask; void* snapFlags; int serverTime; int serverCommandNum; } ;
typedef TYPE_3__ clSnapshot_t ;
struct TYPE_21__ {scalar_t__ parseEntitiesNum; void* newSnapshots; TYPE_3__ snap; TYPE_3__* snapshots; TYPE_2__* outPackets; } ;
struct TYPE_20__ {scalar_t__ modified; } ;
struct TYPE_19__ {int integer; } ;
struct TYPE_14__ {int outgoingSequence; } ;
struct TYPE_18__ {int serverMessageSequence; TYPE_1__ netchan; void* demowaiting; int serverCommandSequence; } ;
struct TYPE_17__ {int realtime; } ;
struct TYPE_15__ {scalar_t__ p_serverTime; int p_realtime; } ;


 int CL_ParsePacketEntities (int *,TYPE_3__*,TYPE_3__*) ;
 int Com_Error (int ,char*,int) ;
 int Com_Memset (TYPE_3__*,int ,int) ;
 int Com_Printf (char*,...) ;
 int ERR_DROP ;
 scalar_t__ MAX_PARSE_ENTITIES ;
 scalar_t__ MAX_SNAPSHOT_ENTITIES ;
 void* MSG_ReadByte (int *) ;
 int MSG_ReadData (int *,int *,int) ;
 int MSG_ReadDeltaPlayerstate (int *,TYPE_9__*,TYPE_9__*) ;
 int MSG_ReadLong (int *) ;
 int PACKET_BACKUP ;
 size_t PACKET_MASK ;
 int SHOWNET (int *,char*) ;
 TYPE_8__ cl ;
 TYPE_7__* cl_paused ;
 TYPE_6__* cl_shownet ;
 TYPE_5__ clc ;
 TYPE_4__ cls ;
 void* qfalse ;
 void* qtrue ;

void CL_ParseSnapshot( msg_t *msg ) {
 int len;
 clSnapshot_t *old;
 clSnapshot_t newSnap;
 int deltaNum;
 int oldMessageNum;
 int i, packetNum;







 Com_Memset (&newSnap, 0, sizeof(newSnap));



 newSnap.serverCommandNum = clc.serverCommandSequence;

 newSnap.serverTime = MSG_ReadLong( msg );



 cl_paused->modified = 0;

 newSnap.messageNum = clc.serverMessageSequence;

 deltaNum = MSG_ReadByte( msg );
 if ( !deltaNum ) {
  newSnap.deltaNum = -1;
 } else {
  newSnap.deltaNum = newSnap.messageNum - deltaNum;
 }
 newSnap.snapFlags = MSG_ReadByte( msg );





 if ( newSnap.deltaNum <= 0 ) {
  newSnap.valid = qtrue;
  old = ((void*)0);
  clc.demowaiting = qfalse;
 } else {
  old = &cl.snapshots[newSnap.deltaNum & PACKET_MASK];
  if ( !old->valid ) {

   Com_Printf ("Delta from invalid frame (not supposed to happen!).\n");
  } else if ( old->messageNum != newSnap.deltaNum ) {


   Com_Printf ("Delta frame too old.\n");
  } else if ( cl.parseEntitiesNum - old->parseEntitiesNum > MAX_PARSE_ENTITIES - MAX_SNAPSHOT_ENTITIES ) {
   Com_Printf ("Delta parseEntitiesNum too old.\n");
  } else {
   newSnap.valid = qtrue;
  }
 }


 len = MSG_ReadByte( msg );

 if(len > sizeof(newSnap.areamask))
 {
  Com_Error (ERR_DROP,"CL_ParseSnapshot: Invalid size %d for areamask", len);
  return;
 }

 MSG_ReadData( msg, &newSnap.areamask, len);


 SHOWNET( msg, "playerstate" );
 if ( old ) {
  MSG_ReadDeltaPlayerstate( msg, &old->ps, &newSnap.ps );
 } else {
  MSG_ReadDeltaPlayerstate( msg, ((void*)0), &newSnap.ps );
 }


 SHOWNET( msg, "packet entities" );
 CL_ParsePacketEntities( msg, old, &newSnap );



 if ( !newSnap.valid ) {
  return;
 }





 oldMessageNum = cl.snap.messageNum + 1;

 if ( newSnap.messageNum - oldMessageNum >= PACKET_BACKUP ) {
  oldMessageNum = newSnap.messageNum - ( PACKET_BACKUP - 1 );
 }
 for ( ; oldMessageNum < newSnap.messageNum ; oldMessageNum++ ) {
  cl.snapshots[oldMessageNum & PACKET_MASK].valid = qfalse;
 }


 cl.snap = newSnap;
 cl.snap.ping = 999;

 for ( i = 0 ; i < PACKET_BACKUP ; i++ ) {
  packetNum = ( clc.netchan.outgoingSequence - 1 - i ) & PACKET_MASK;
  if ( cl.snap.ps.commandTime >= cl.outPackets[ packetNum ].p_serverTime ) {
   cl.snap.ping = cls.realtime - cl.outPackets[ packetNum ].p_realtime;
   break;
  }
 }

 cl.snapshots[cl.snap.messageNum & PACKET_MASK] = cl.snap;

 if (cl_shownet->integer == 3) {
  Com_Printf( "   snapshot:%i  delta:%i  ping:%i\n", cl.snap.messageNum,
  cl.snap.deltaNum, cl.snap.ping );
 }

 cl.newSnapshots = qtrue;
}
