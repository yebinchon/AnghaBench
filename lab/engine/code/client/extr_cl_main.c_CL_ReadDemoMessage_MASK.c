#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cursize; int maxsize; int* data; scalar_t__ readcount; } ;
typedef  TYPE_1__ msg_t ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  bufData ;
struct TYPE_8__ {int /*<<< orphan*/  lastPacketTime; int /*<<< orphan*/  demofile; void* serverMessageSequence; } ;
struct TYPE_7__ {int /*<<< orphan*/  realtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int FUNC4 (int*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 

void FUNC7( void ) {
	int			r;
	msg_t		buf;
	byte		bufData[ MAX_MSGLEN ];
	int			s;

	if ( !clc.demofile ) {
		FUNC0 ();
		return;
	}

	// get the sequence number
	r = FUNC4( &s, 4, clc.demofile);
	if ( r != 4 ) {
		FUNC0 ();
		return;
	}
	clc.serverMessageSequence = FUNC5( s );

	// init the message
	FUNC6( &buf, bufData, sizeof( bufData ) );

	// get the length
	r = FUNC4 (&buf.cursize, 4, clc.demofile);
	if ( r != 4 ) {
		FUNC0 ();
		return;
	}
	buf.cursize = FUNC5( buf.cursize );
	if ( buf.cursize == -1 ) {
		FUNC0 ();
		return;
	}
	if ( buf.cursize > buf.maxsize ) {
		FUNC2 (ERR_DROP, "CL_ReadDemoMessage: demoMsglen > MAX_MSGLEN");
	}
	r = FUNC4( buf.data, buf.cursize, clc.demofile );
	if ( r != buf.cursize ) {
		FUNC3( "Demo file was truncated.\n");
		FUNC0 ();
		return;
	}

	clc.lastPacketTime = cls.realtime;
	buf.readcount = 0;
	FUNC1( &buf );
}