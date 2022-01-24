#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_24__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  serverTime; } ;
typedef  TYPE_3__ usercmd_t ;
typedef  int /*<<< orphan*/  nullcmd ;
struct TYPE_31__ {int cursize; } ;
typedef  TYPE_4__ msg_t ;
typedef  int /*<<< orphan*/  fakedata ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_36__ {scalar_t__ integer; } ;
struct TYPE_35__ {int integer; } ;
struct TYPE_34__ {scalar_t__ integer; } ;
struct TYPE_28__ {int outgoingSequence; } ;
struct TYPE_33__ {scalar_t__ state; int serverMessageSequence; int serverCommandSequence; int reliableAcknowledge; int reliableSequence; int const voipOutgoingDataSize; int voipFlags; int voipOutgoingGeneration; int voipOutgoingSequence; int voipOutgoingDataFrames; int const clientNum; int checksumFeed; TYPE_24__ netchan; int /*<<< orphan*/  lastPacketSentTime; int /*<<< orphan*/ * serverCommands; scalar_t__ demowaiting; int /*<<< orphan*/  voipOutgoingData; scalar_t__ demorecording; int /*<<< orphan*/  voipTargets; int /*<<< orphan*/ * reliableCommands; scalar_t__ demoplaying; } ;
struct TYPE_32__ {int /*<<< orphan*/  realtime; } ;
struct TYPE_29__ {int messageNum; int /*<<< orphan*/  valid; } ;
struct TYPE_27__ {int p_cmdNumber; int /*<<< orphan*/  p_serverTime; int /*<<< orphan*/  p_realtime; } ;
struct TYPE_26__ {int serverId; int cmdNumber; TYPE_1__* outPackets; TYPE_3__* cmds; TYPE_2__ snap; } ;

/* Variables and functions */
 scalar_t__ CA_CINEMATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_24__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int CMD_MASK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int MAX_MSGLEN ; 
 int MAX_PACKET_USERCMDS ; 
 int MAX_RELIABLE_COMMANDS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int const) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int PACKET_MASK ; 
 int /*<<< orphan*/  VOIP_FLAGCNT ; 
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

void FUNC16( void ) {
	msg_t		buf;
	byte		data[MAX_MSGLEN];
	int			i, j;
	usercmd_t	*cmd, *oldcmd;
	usercmd_t	nullcmd;
	int			packetNum;
	int			oldPacketNum;
	int			count, key;

	// don't send anything if playing back a demo
	if ( clc.demoplaying || clc.state == CA_CINEMATIC ) {
		return;
	}

	FUNC3( &nullcmd, 0, sizeof(nullcmd) );
	oldcmd = &nullcmd;

	FUNC8( &buf, data, sizeof(data) );

	FUNC6( &buf );
	// write the current serverId so the server
	// can tell if this is from the current gameState
	FUNC13( &buf, cl.serverId );

	// write the last message we received, which can
	// be used for delta compression, and is also used
	// to tell if we dropped a gamestate
	FUNC13( &buf, clc.serverMessageSequence );

	// write the last reliable message we received
	FUNC13( &buf, clc.serverCommandSequence );

	// write any unacknowledged clientCommands
	for ( i = clc.reliableAcknowledge + 1 ; i <= clc.reliableSequence ; i++ ) {
		FUNC10( &buf, clc_clientCommand );
		FUNC13( &buf, i );
		FUNC15( &buf, clc.reliableCommands[ i & (MAX_RELIABLE_COMMANDS-1) ] );
	}

	// we want to send all the usercmds that were generated in the last
	// few packet, so even if a couple packets are dropped in a row,
	// all the cmds will make it to the server
	if ( cl_packetdup->integer < 0 ) {
		FUNC5( "cl_packetdup", "0" );
	} else if ( cl_packetdup->integer > 5 ) {
		FUNC5( "cl_packetdup", "5" );
	}
	oldPacketNum = (clc.netchan.outgoingSequence - 1 - cl_packetdup->integer) & PACKET_MASK;
	count = cl.cmdNumber - cl.outPackets[ oldPacketNum ].p_cmdNumber;
	if ( count > MAX_PACKET_USERCMDS ) {
		count = MAX_PACKET_USERCMDS;
		FUNC4("MAX_PACKET_USERCMDS\n");
	}

#ifdef USE_VOIP
	if (clc.voipOutgoingDataSize > 0)
	{
		if((clc.voipFlags & VOIP_SPATIAL) || Com_IsVoipTarget(clc.voipTargets, sizeof(clc.voipTargets), -1))
		{
			MSG_WriteByte (&buf, clc_voipOpus);
			MSG_WriteByte (&buf, clc.voipOutgoingGeneration);
			MSG_WriteLong (&buf, clc.voipOutgoingSequence);
			MSG_WriteByte (&buf, clc.voipOutgoingDataFrames);
			MSG_WriteData (&buf, clc.voipTargets, sizeof(clc.voipTargets));
			MSG_WriteByte(&buf, clc.voipFlags);
			MSG_WriteShort (&buf, clc.voipOutgoingDataSize);
			MSG_WriteData (&buf, clc.voipOutgoingData, clc.voipOutgoingDataSize);

			// If we're recording a demo, we have to fake a server packet with
			//  this VoIP data so it gets to disk; the server doesn't send it
			//  back to us, and we might as well eliminate concerns about dropped
			//  and misordered packets here.
			if(clc.demorecording && !clc.demowaiting)
			{
				const int voipSize = clc.voipOutgoingDataSize;
				msg_t fakemsg;
				byte fakedata[MAX_MSGLEN];
				MSG_Init (&fakemsg, fakedata, sizeof (fakedata));
				MSG_Bitstream (&fakemsg);
				MSG_WriteLong (&fakemsg, clc.reliableAcknowledge);
				MSG_WriteByte (&fakemsg, svc_voipOpus);
				MSG_WriteShort (&fakemsg, clc.clientNum);
				MSG_WriteByte (&fakemsg, clc.voipOutgoingGeneration);
				MSG_WriteLong (&fakemsg, clc.voipOutgoingSequence);
				MSG_WriteByte (&fakemsg, clc.voipOutgoingDataFrames);
				MSG_WriteShort (&fakemsg, clc.voipOutgoingDataSize );
				MSG_WriteBits (&fakemsg, clc.voipFlags, VOIP_FLAGCNT);
				MSG_WriteData (&fakemsg, clc.voipOutgoingData, voipSize);
				MSG_WriteByte (&fakemsg, svc_EOF);
				CL_WriteDemoMessage (&fakemsg, 0);
			}

			clc.voipOutgoingSequence += clc.voipOutgoingDataFrames;
			clc.voipOutgoingDataSize = 0;
			clc.voipOutgoingDataFrames = 0;
		}
		else
		{
			// We have data, but no targets. Silently discard all data
			clc.voipOutgoingDataSize = 0;
			clc.voipOutgoingDataFrames = 0;
		}
	}
#endif

	if ( count >= 1 ) {
		if ( cl_showSend->integer ) {
			FUNC4( "(%i)", count );
		}

		// begin a client move command
		if ( cl_nodelta->integer || !cl.snap.valid || clc.demowaiting
			|| clc.serverMessageSequence != cl.snap.messageNum ) {
			FUNC10 (&buf, clc_moveNoDelta);
		} else {
			FUNC10 (&buf, clc_move);
		}

		// write the command count
		FUNC10( &buf, count );

		// use the checksum feed in the key
		key = clc.checksumFeed;
		// also use the message acknowledge
		key ^= clc.serverMessageSequence;
		// also use the last acknowledged server command in the key
		key ^= FUNC7(clc.serverCommands[ clc.serverCommandSequence & (MAX_RELIABLE_COMMANDS-1) ], 32);

		// write all the commands, including the predicted command
		for ( i = 0 ; i < count ; i++ ) {
			j = (cl.cmdNumber - count + i + 1) & CMD_MASK;
			cmd = &cl.cmds[j];
			FUNC12 (&buf, key, oldcmd, cmd);
			oldcmd = cmd;
		}
	}

	//
	// deliver the message
	//
	packetNum = clc.netchan.outgoingSequence & PACKET_MASK;
	cl.outPackets[ packetNum ].p_realtime = cls.realtime;
	cl.outPackets[ packetNum ].p_serverTime = oldcmd->serverTime;
	cl.outPackets[ packetNum ].p_cmdNumber = cl.cmdNumber;
	clc.lastPacketSentTime = cls.realtime;

	if ( cl_showSend->integer ) {
		FUNC4( "%i ", buf.cursize );
	}

	FUNC0 (&clc.netchan, &buf);	
}