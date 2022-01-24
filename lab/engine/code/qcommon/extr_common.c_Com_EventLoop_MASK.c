#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int evType; int evTime; scalar_t__ evPtr; int /*<<< orphan*/  evValue2; int /*<<< orphan*/  evValue; } ;
typedef  TYPE_1__ sysEvent_t ;
typedef  int /*<<< orphan*/  netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  bufData ;
struct TYPE_5__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int /*<<< orphan*/  NS_SERVER ; 
#define  SE_CHAR 132 
#define  SE_CONSOLE 131 
#define  SE_JOYSTICK_AXIS 130 
#define  SE_KEY 129 
#define  SE_MOUSE 128 
 int SE_NONE ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 TYPE_2__* com_sv_running ; 

int FUNC12( void ) {
	sysEvent_t	ev;
	netadr_t	evFrom;
	byte		bufData[MAX_MSGLEN];
	msg_t		buf;

	FUNC9( &buf, bufData, sizeof( bufData ) );

	while ( 1 ) {
		ev = FUNC7();

		// if no more events are available
		if ( ev.evType == SE_NONE ) {
			// manually send packet events for the loopback channel
			while ( FUNC10( NS_CLIENT, &evFrom, &buf ) ) {
				FUNC4( evFrom, &buf );
			}

			while ( FUNC10( NS_SERVER, &evFrom, &buf ) ) {
				// if the server just shut down, flush the events
				if ( com_sv_running->integer ) {
					FUNC8( &evFrom, &buf );
				}
			}

			return ev.evTime;
		}


		switch(ev.evType)
		{
			case SE_KEY:
				FUNC2( ev.evValue, ev.evValue2, ev.evTime );
			break;
			case SE_CHAR:
				FUNC0( ev.evValue );
			break;
			case SE_MOUSE:
				FUNC3( ev.evValue, ev.evValue2, ev.evTime );
			break;
			case SE_JOYSTICK_AXIS:
				FUNC1( ev.evValue, ev.evValue2, ev.evTime );
			break;
			case SE_CONSOLE:
				FUNC5( (char *)ev.evPtr );
				FUNC5( "\n" );
			break;
			default:
				FUNC6( ERR_FATAL, "Com_EventLoop: bad event type %i", ev.evType );
			break;
		}

		// free any block data
		if ( ev.evPtr ) {
			FUNC11( ev.evPtr );
		}
	}

	return 0;	// never reached
}