#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stereoFrame_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {scalar_t__ gametype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC4 (float) ; 
 scalar_t__ GT_TEAM ; 
 scalar_t__ STEREO_CENTER ; 
 scalar_t__ STEREO_RIGHT ; 
 TYPE_6__ cg_drawAttacker ; 
 TYPE_5__ cg_drawFPS ; 
 TYPE_4__ cg_drawSnapshot ; 
 TYPE_3__ cg_drawTeamOverlay ; 
 TYPE_2__ cg_drawTimer ; 
 TYPE_1__ cgs ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC5(stereoFrame_t stereoFrame)
{
	float	y;

	y = 0;

	if ( cgs.gametype >= GT_TEAM && cg_drawTeamOverlay.integer == 1 ) {
		y = FUNC3( y, qtrue, qtrue );
	} 
	if ( cg_drawSnapshot.integer ) {
		y = FUNC2( y );
	}
	if (cg_drawFPS.integer && (stereoFrame == STEREO_CENTER || stereoFrame == STEREO_RIGHT)) {
		y = FUNC1( y );
	}
	if ( cg_drawTimer.integer ) {
		y = FUNC4( y );
	}
	if ( cg_drawAttacker.integer ) {
		FUNC0( y );
	}

}