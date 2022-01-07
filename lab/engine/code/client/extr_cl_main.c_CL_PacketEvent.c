
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int netadr_t ;
struct TYPE_10__ {int cursize; int readcount; scalar_t__ data; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_13__ {int remoteAddress; } ;
struct TYPE_12__ {scalar_t__ state; int demowaiting; scalar_t__ demorecording; int lastPacketTime; int serverMessageSequence; TYPE_7__ netchan; } ;
struct TYPE_11__ {int realtime; } ;


 scalar_t__ CA_CONNECTED ;
 int CL_ConnectionlessPacket (int ,TYPE_1__*) ;
 int CL_Netchan_Process (TYPE_7__*,TYPE_1__*) ;
 int CL_ParseServerMessage (TYPE_1__*) ;
 int CL_WriteDemoMessage (TYPE_1__*,int) ;
 int Com_DPrintf (char*,int ) ;
 int Com_Printf (char*,int ) ;
 int LittleLong (int) ;
 int NET_AdrToStringwPort (int ) ;
 int NET_CompareAdr (int ,int ) ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;

void CL_PacketEvent( netadr_t from, msg_t *msg ) {
 int headerBytes;

 clc.lastPacketTime = cls.realtime;

 if ( msg->cursize >= 4 && *(int *)msg->data == -1 ) {
  CL_ConnectionlessPacket( from, msg );
  return;
 }

 if ( clc.state < CA_CONNECTED ) {
  return;
 }

 if ( msg->cursize < 4 ) {
  Com_Printf ("%s: Runt packet\n", NET_AdrToStringwPort( from ));
  return;
 }




 if ( !NET_CompareAdr( from, clc.netchan.remoteAddress ) ) {
  Com_DPrintf ("%s:sequenced packet without connection\n"
   , NET_AdrToStringwPort( from ) );

  return;
 }

 if (!CL_Netchan_Process( &clc.netchan, msg) ) {
  return;
 }


 headerBytes = msg->readcount;




 clc.serverMessageSequence = LittleLong( *(int *)msg->data );

 clc.lastPacketTime = cls.realtime;
 CL_ParseServerMessage( msg );





 if ( clc.demorecording && !clc.demowaiting ) {
  CL_WriteDemoMessage( msg, headerBytes );
 }
}
