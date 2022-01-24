#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  checksumFeed; scalar_t__ demorecording; } ;
struct TYPE_5__ {void* cgameStarted; void* soundRegistered; void* uiStarted; void* rendererStarted; } ;
struct TYPE_4__ {scalar_t__ integer; } ;

/* Variables and functions */
 scalar_t__ CA_CINEMATIC ; 
 scalar_t__ CA_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FS_CGAME_REF ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*) ; 
 int FS_UI_REF ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 
 TYPE_1__* com_sv_running ; 
 void* qfalse ; 
 void* qtrue ; 

void FUNC17( void ) {

	// Settings may have changed so stop recording now
	if( FUNC10( ) ) {
		FUNC0( );
	}

	if(clc.demorecording)
		FUNC9();

	// don't let them loop during the restart
	FUNC16();

	if(!FUNC13(clc.checksumFeed, qtrue))
	{
		// if not running a server clear the whole hunk
		if(com_sv_running->integer)
		{
			// clear all the client data on the hunk
			FUNC15();
		}
		else
		{
			// clear the whole hunk
			FUNC14();
		}
	
		// shutdown the UI
		FUNC7();
		// shutdown the CGame
		FUNC5();
		// shutdown the renderer and clear the renderer interface
		FUNC6();
		// client is no longer pure until new checksums are sent
		FUNC3();
		// clear pak references
		FUNC12( FS_UI_REF | FS_CGAME_REF );
		// reinitialize the filesystem if the game directory or checksum has changed

		cls.rendererStarted = qfalse;
		cls.uiStarted = qfalse;
		cls.cgameStarted = qfalse;
		cls.soundRegistered = qfalse;

		// unpause so the cgame definitely gets a snapshot and renders a frame
		FUNC11("cl_paused", "0");

		// initialize the renderer interface
		FUNC2();

		// startup all the client stuff
		FUNC8(qfalse);

		// start the cgame if connected
		if(clc.state > CA_CONNECTED && clc.state != CA_CINEMATIC)
		{
			cls.cgameStarted = qtrue;
			FUNC1();
			// send pure checksums
			FUNC4();
		}
	}
}