#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int integer; } ;
struct TYPE_23__ {int integer; } ;
struct TYPE_22__ {int integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {int /*<<< orphan*/  integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {void* modified; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; void* modified; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 () ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  abortframe ; 
 TYPE_12__* com_altivec ; 
 TYPE_11__* com_busyWait ; 
 TYPE_10__* com_dedicated ; 
 int /*<<< orphan*/  com_frameNumber ; 
 int com_frameTime ; 
 TYPE_9__* com_maxfps ; 
 TYPE_8__* com_maxfpsMinimized ; 
 TYPE_7__* com_maxfpsUnfocused ; 
 TYPE_6__* com_minimized ; 
 TYPE_5__* com_showtrace ; 
 TYPE_4__* com_speeds ; 
 TYPE_3__* com_sv_running ; 
 TYPE_2__* com_timedemo ; 
 TYPE_1__* com_unfocused ; 
 void* qfalse ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ time_backend ; 
 scalar_t__ time_frontend ; 
 scalar_t__ time_game ; 

void FUNC20( void ) {

	int		msec, minMsec;
	int		timeVal, timeValSV;
	static int	lastTime = 0, bias = 0;
 
	int		timeBeforeFirstEvents;
	int		timeBeforeServer;
	int		timeBeforeEvents;
	int		timeBeforeClient;
	int		timeAfter;
  

	if ( FUNC19 (abortframe) ) {
		return;			// an ERR_DROP was thrown
	}

	timeBeforeFirstEvents =0;
	timeBeforeServer =0;
	timeBeforeEvents =0;
	timeBeforeClient = 0;
	timeAfter = 0;

	// write config file if anything changed
	FUNC9(); 

	//
	// main event loop
	//
	if ( com_speeds->integer ) {
		timeBeforeFirstEvents = FUNC18 ();
	}

	// Figure out how much time we have
	if(!com_timedemo->integer)
	{
		if(com_dedicated->integer)
			minMsec = FUNC15();
		else
		{
			if(com_minimized->integer && com_maxfpsMinimized->integer > 0)
				minMsec = 1000 / com_maxfpsMinimized->integer;
			else if(com_unfocused->integer && com_maxfpsUnfocused->integer > 0)
				minMsec = 1000 / com_maxfpsUnfocused->integer;
			else if(com_maxfps->integer > 0)
				minMsec = 1000 / com_maxfps->integer;
			else
				minMsec = 1;
			
			timeVal = com_frameTime - lastTime;
			bias += timeVal - minMsec;
			
			if(bias > minMsec)
				bias = minMsec;
			
			// Adjust minMsec if previous frame took too long to render so
			// that framerate is stable at the requested value.
			minMsec -= bias;
		}
	}
	else
		minMsec = 1;

	do
	{
		if(com_sv_running->integer)
		{
			timeValSV = FUNC16();
			
			timeVal = FUNC8(minMsec);

			if(timeValSV < timeVal)
				timeVal = timeValSV;
		}
		else
			timeVal = FUNC8(minMsec);
		
		if(com_busyWait->integer || timeVal < 1)
			FUNC13(0);
		else
			FUNC13(timeVal - 1);
	} while(com_maxfps->integer && FUNC8(minMsec));
	
	FUNC11();

	lastTime = com_frameTime;
	com_frameTime = FUNC4();
	
	msec = com_frameTime - lastTime;

	FUNC2 ();

	if (com_altivec->modified)
	{
		FUNC3();
		com_altivec->modified = qfalse;
	}

	// mess with msec if needed
	msec = FUNC5(msec);

	//
	// server side
	//
	if ( com_speeds->integer ) {
		timeBeforeServer = FUNC18 ();
	}

	FUNC14( msec );

	// if "dedicated" has been modified, start up
	// or shut down the client system.
	// Do this after the server may have started,
	// but before the client tries to auto-connect
	if ( com_dedicated->modified ) {
		// get the latched value
		FUNC10( "dedicated", "0", 0 );
		com_dedicated->modified = qfalse;
		if ( !com_dedicated->integer ) {
			FUNC17( "dedicated set to 0" );
			FUNC0();
		}
	}

#ifndef DEDICATED
	//
	// client system
	//
	//
	// run event loop a second time to get server to client packets
	// without a frame of latency
	//
	if ( com_speeds->integer ) {
		timeBeforeEvents = FUNC18 ();
	}
	FUNC4();
	FUNC2 ();


	//
	// client side
	//
	if ( com_speeds->integer ) {
		timeBeforeClient = FUNC18 ();
	}

	FUNC1( msec );

	if ( com_speeds->integer ) {
		timeAfter = FUNC18 ();
	}
#else
	if ( com_speeds->integer ) {
		timeAfter = Sys_Milliseconds ();
		timeBeforeEvents = timeAfter;
		timeBeforeClient = timeAfter;
	}
#endif


	FUNC12();

	//
	// report timing information
	//
	if ( com_speeds->integer ) {
		int			all, sv, ev, cl;

		all = timeAfter - timeBeforeServer;
		sv = timeBeforeEvents - timeBeforeServer;
		ev = timeBeforeServer - timeBeforeFirstEvents + timeBeforeClient - timeBeforeEvents;
		cl = timeAfter - timeBeforeClient;
		sv -= time_game;
		cl -= time_frontend + time_backend;

		FUNC6 ("frame:%i all:%3i sv:%3i ev:%3i cl:%3i gm:%3i rf:%3i bk:%3i\n", 
					 com_frameNumber, all, sv, ev, cl, time_game, time_frontend, time_backend );
	}	

	//
	// trace optimization tracking
	//
	if ( com_showtrace->integer ) {
	
		extern	int c_traces, c_brush_traces, c_patch_traces;
		extern	int	c_pointcontents;

		FUNC6 ("%4i traces  (%ib %ip) %4i points\n", c_traces,
			c_brush_traces, c_patch_traces, c_pointcontents);
		c_traces = 0;
		c_brush_traces = 0;
		c_patch_traces = 0;
		c_pointcontents = 0;
	}

	FUNC7( );

	com_frameNumber++;
}