
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_24__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_30__ {int serverTime; } ;
typedef TYPE_3__ usercmd_t ;
typedef int nullcmd ;
struct TYPE_31__ {int cursize; } ;
typedef TYPE_4__ msg_t ;
typedef int fakedata ;
typedef int data ;
typedef int byte ;
struct TYPE_36__ {scalar_t__ integer; } ;
struct TYPE_35__ {int integer; } ;
struct TYPE_34__ {scalar_t__ integer; } ;
struct TYPE_28__ {int outgoingSequence; } ;
struct TYPE_33__ {scalar_t__ state; int serverMessageSequence; int serverCommandSequence; int reliableAcknowledge; int reliableSequence; int const voipOutgoingDataSize; int voipFlags; int voipOutgoingGeneration; int voipOutgoingSequence; int voipOutgoingDataFrames; int const clientNum; int checksumFeed; TYPE_24__ netchan; int lastPacketSentTime; int * serverCommands; scalar_t__ demowaiting; int voipOutgoingData; scalar_t__ demorecording; int voipTargets; int * reliableCommands; scalar_t__ demoplaying; } ;
struct TYPE_32__ {int realtime; } ;
struct TYPE_29__ {int messageNum; int valid; } ;
struct TYPE_27__ {int p_cmdNumber; int p_serverTime; int p_realtime; } ;
struct TYPE_26__ {int serverId; int cmdNumber; TYPE_1__* outPackets; TYPE_3__* cmds; TYPE_2__ snap; } ;


 scalar_t__ CA_CINEMATIC ;
 int CL_Netchan_Transmit (TYPE_24__*,TYPE_4__*) ;
 int CL_WriteDemoMessage (TYPE_4__*,int ) ;
 int CMD_MASK ;
 scalar_t__ Com_IsVoipTarget (int ,int,int) ;
 int Com_Memset (TYPE_3__*,int ,int) ;
 int Com_Printf (char*,...) ;
 int Cvar_Set (char*,char*) ;
 int MAX_MSGLEN ;
 int MAX_PACKET_USERCMDS ;
 int MAX_RELIABLE_COMMANDS ;
 int MSG_Bitstream (TYPE_4__*) ;
 int MSG_HashKey (int ,int) ;
 int MSG_Init (TYPE_4__*,int *,int) ;
 int MSG_WriteBits (TYPE_4__*,int,int ) ;
 int MSG_WriteByte (TYPE_4__*,int) ;
 int MSG_WriteData (TYPE_4__*,int ,int const) ;
 int MSG_WriteDeltaUsercmdKey (TYPE_4__*,int,TYPE_3__*,TYPE_3__*) ;
 int MSG_WriteLong (TYPE_4__*,int) ;
 int MSG_WriteShort (TYPE_4__*,int const) ;
 int MSG_WriteString (TYPE_4__*,int ) ;
 int PACKET_MASK ;
 int VOIP_FLAGCNT ;
 int VOIP_SPATIAL ;
 TYPE_10__ cl ;
 TYPE_9__* cl_nodelta ;
 TYPE_8__* cl_packetdup ;
 TYPE_7__* cl_showSend ;
 TYPE_6__ clc ;
 int clc_clientCommand ;
 int clc_move ;
 int clc_moveNoDelta ;
 int clc_voipOpus ;
 TYPE_5__ cls ;
 int svc_EOF ;
 int svc_voipOpus ;

void CL_WritePacket( void ) {
 msg_t buf;
 byte data[MAX_MSGLEN];
 int i, j;
 usercmd_t *cmd, *oldcmd;
 usercmd_t nullcmd;
 int packetNum;
 int oldPacketNum;
 int count, key;


 if ( clc.demoplaying || clc.state == CA_CINEMATIC ) {
  return;
 }

 Com_Memset( &nullcmd, 0, sizeof(nullcmd) );
 oldcmd = &nullcmd;

 MSG_Init( &buf, data, sizeof(data) );

 MSG_Bitstream( &buf );


 MSG_WriteLong( &buf, cl.serverId );




 MSG_WriteLong( &buf, clc.serverMessageSequence );


 MSG_WriteLong( &buf, clc.serverCommandSequence );


 for ( i = clc.reliableAcknowledge + 1 ; i <= clc.reliableSequence ; i++ ) {
  MSG_WriteByte( &buf, clc_clientCommand );
  MSG_WriteLong( &buf, i );
  MSG_WriteString( &buf, clc.reliableCommands[ i & (MAX_RELIABLE_COMMANDS-1) ] );
 }




 if ( cl_packetdup->integer < 0 ) {
  Cvar_Set( "cl_packetdup", "0" );
 } else if ( cl_packetdup->integer > 5 ) {
  Cvar_Set( "cl_packetdup", "5" );
 }
 oldPacketNum = (clc.netchan.outgoingSequence - 1 - cl_packetdup->integer) & PACKET_MASK;
 count = cl.cmdNumber - cl.outPackets[ oldPacketNum ].p_cmdNumber;
 if ( count > MAX_PACKET_USERCMDS ) {
  count = MAX_PACKET_USERCMDS;
  Com_Printf("MAX_PACKET_USERCMDS\n");
 }
 if ( count >= 1 ) {
  if ( cl_showSend->integer ) {
   Com_Printf( "(%i)", count );
  }


  if ( cl_nodelta->integer || !cl.snap.valid || clc.demowaiting
   || clc.serverMessageSequence != cl.snap.messageNum ) {
   MSG_WriteByte (&buf, clc_moveNoDelta);
  } else {
   MSG_WriteByte (&buf, clc_move);
  }


  MSG_WriteByte( &buf, count );


  key = clc.checksumFeed;

  key ^= clc.serverMessageSequence;

  key ^= MSG_HashKey(clc.serverCommands[ clc.serverCommandSequence & (MAX_RELIABLE_COMMANDS-1) ], 32);


  for ( i = 0 ; i < count ; i++ ) {
   j = (cl.cmdNumber - count + i + 1) & CMD_MASK;
   cmd = &cl.cmds[j];
   MSG_WriteDeltaUsercmdKey (&buf, key, oldcmd, cmd);
   oldcmd = cmd;
  }
 }




 packetNum = clc.netchan.outgoingSequence & PACKET_MASK;
 cl.outPackets[ packetNum ].p_realtime = cls.realtime;
 cl.outPackets[ packetNum ].p_serverTime = oldcmd->serverTime;
 cl.outPackets[ packetNum ].p_cmdNumber = cl.cmdNumber;
 clc.lastPacketSentTime = cls.realtime;

 if ( cl_showSend->integer ) {
  Com_Printf( "%i ", buf.cursize );
 }

 CL_Netchan_Transmit (&clc.netchan, &buf);
}
