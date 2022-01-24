#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  checksumFeed; void* downloadRestart; void* cURLDisconnected; void* cURLUsed; } ;
struct TYPE_3__ {int /*<<< orphan*/  cgameStarted; } ;

/* Variables and functions */
 scalar_t__ CA_LOADING ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 
 void* qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC10( void ) {

#ifdef USE_CURL
	// if we downloaded with cURL
	if(clc.cURLUsed) { 
		clc.cURLUsed = qfalse;
		CL_cURL_Shutdown();
		if( clc.cURLDisconnected ) {
			if(clc.downloadRestart) {
				FS_Restart(clc.checksumFeed);
				clc.downloadRestart = qfalse;
			}
			clc.cURLDisconnected = qfalse;
			CL_Reconnect_f();
			return;
		}
	}
#endif

	// if we downloaded files we need to restart the file system
	if (clc.downloadRestart) {
		clc.downloadRestart = qfalse;

		FUNC9(clc.checksumFeed); // We possibly downloaded a pak, restart the file system to load it

		// inform the server so we get new gamestate info
		FUNC0("donedl", qfalse);

		// by sending the donedl command we request a new gamestate
		// so we don't want to load stuff yet
		return;
	}

	// let the client game init and load data
	clc.state = CA_LOADING;

	// Pump the loop, this may change gamestate!
	FUNC7();

	// if the gamestate was changed by calling Com_EventLoop
	// then we loaded everything already and we don't want to do it again.
	if ( clc.state != CA_LOADING ) {
		return;
	}

	// starting to load a map so we get out of full screen ui mode
	FUNC8("r_uiFullScreen", "0");

	// flush client memory and start loading stuff
	// this will also (re)load the UI
	// if this is a local client then only the client part of the hunk
	// will be cleared, note that this is done after the hunk mark has been set
	FUNC1();

	// initialize the CGame
	cls.cgameStarted = qtrue;
	FUNC2();

	// set pure checksums
	FUNC4();

	FUNC5();
	FUNC5();
	FUNC5();
}