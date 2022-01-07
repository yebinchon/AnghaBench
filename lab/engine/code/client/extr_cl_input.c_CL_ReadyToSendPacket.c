
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_16__ {scalar_t__ type; } ;
struct TYPE_15__ {TYPE_2__* outPackets; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_9__ {int outgoingSequence; TYPE_8__ remoteAddress; } ;
struct TYPE_12__ {scalar_t__ state; int lastPacketSentTime; TYPE_1__ netchan; scalar_t__* downloadTempName; scalar_t__ demoplaying; } ;
struct TYPE_11__ {int realtime; } ;
struct TYPE_10__ {int p_realtime; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CA_PRIMED ;
 int Cvar_Set (char*,char*) ;
 scalar_t__ NA_LOOPBACK ;
 int PACKET_MASK ;
 scalar_t__ Sys_IsLANAddress (TYPE_8__) ;
 TYPE_7__ cl ;
 TYPE_6__* cl_lanForcePackets ;
 TYPE_5__* cl_maxpackets ;
 TYPE_4__ clc ;
 TYPE_3__ cls ;
 int qfalse ;
 int qtrue ;

qboolean CL_ReadyToSendPacket( void ) {
 int oldPacketNum;
 int delta;


 if ( clc.demoplaying || clc.state == CA_CINEMATIC ) {
  return qfalse;
 }


 if ( *clc.downloadTempName &&
  cls.realtime - clc.lastPacketSentTime < 50 ) {
  return qfalse;
 }



 if ( clc.state != CA_ACTIVE &&
  clc.state != CA_PRIMED &&
  !*clc.downloadTempName &&
  cls.realtime - clc.lastPacketSentTime < 1000 ) {
  return qfalse;
 }


 if ( clc.netchan.remoteAddress.type == NA_LOOPBACK ) {
  return qtrue;
 }


 if ( cl_lanForcePackets->integer && Sys_IsLANAddress( clc.netchan.remoteAddress ) ) {
  return qtrue;
 }


 if ( cl_maxpackets->integer < 15 ) {
  Cvar_Set( "cl_maxpackets", "15" );
 } else if ( cl_maxpackets->integer > 125 ) {
  Cvar_Set( "cl_maxpackets", "125" );
 }
 oldPacketNum = (clc.netchan.outgoingSequence - 1) & PACKET_MASK;
 delta = cls.realtime - cl.outPackets[ oldPacketNum ].p_realtime;
 if ( delta < 1000 / cl_maxpackets->integer ) {

  return qfalse;
 }

 return qtrue;
}
