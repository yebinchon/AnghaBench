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
struct TYPE_4__ {int /*<<< orphan*/  integer; } ;
struct TYPE_3__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 char const* BASEGAME ; 
 int CVAR_ARCHIVE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  Q3CONFIG_CFG ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * cl_cdkey ; 
 int /*<<< orphan*/  com_fullyInitialized ; 
 TYPE_2__* com_standalone ; 
 TYPE_1__* com_writeConfig ; 
 int cvar_modifiedFlags ; 

void FUNC4( void ) {
	// if we are quiting without fully initializing, make sure
	// we don't write out anything
	if ( !com_fullyInitialized ) {
		return;
	}

	if ( !(cvar_modifiedFlags & CVAR_ARCHIVE ) ) {
		return;
	}
	cvar_modifiedFlags &= ~CVAR_ARCHIVE;

	if ( !com_writeConfig->integer ) {
		return;
	}

	FUNC1( Q3CONFIG_CFG );

	// not needed for dedicated or standalone
#if !defined(DEDICATED) && !defined(STANDALONE)
	if(!com_standalone->integer)
	{
		const char *gamedir;
		gamedir = FUNC2( "fs_game" );
		if (FUNC3() && gamedir[0] != 0) {
			FUNC0( gamedir, &cl_cdkey[16] );
		} else {
			FUNC0( BASEGAME, cl_cdkey );
		}
	}
#endif
}