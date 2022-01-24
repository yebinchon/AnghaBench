#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  vmCvar; } ;
typedef  TYPE_1__ cvarTable_t ;
struct TYPE_7__ {scalar_t__ modificationCount; scalar_t__ integer; } ;
struct TYPE_6__ {scalar_t__ modificationCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__ cg_drawTeamOverlay ; 
 TYPE_3__ cg_forceModel ; 
 TYPE_1__* cvarTable ; 
 int cvarTableSize ; 
 scalar_t__ drawTeamOverlayModificationCount ; 
 scalar_t__ forceModelModificationCount ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3( void ) {
	int			i;
	cvarTable_t	*cv;

	for ( i = 0, cv = cvarTable ; i < cvarTableSize ; i++, cv++ ) {
		FUNC2( cv->vmCvar );
	}

	// check for modications here

	// If team overlay is on, ask for updates from the server.  If it's off,
	// let the server know so we don't receive it
	if ( drawTeamOverlayModificationCount != cg_drawTeamOverlay.modificationCount ) {
		drawTeamOverlayModificationCount = cg_drawTeamOverlay.modificationCount;

		if ( cg_drawTeamOverlay.integer > 0 ) {
			FUNC1( "teamoverlay", "1" );
		} else {
			FUNC1( "teamoverlay", "0" );
		}
	}

	// if force model changed
	if ( forceModelModificationCount != cg_forceModel.modificationCount ) {
		forceModelModificationCount = cg_forceModel.modificationCount;
		FUNC0();
	}
}