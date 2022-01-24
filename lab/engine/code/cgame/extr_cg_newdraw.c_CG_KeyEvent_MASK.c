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
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ pm_type; } ;
struct TYPE_6__ {scalar_t__ showScores; TYPE_1__ predictedPlayerState; } ;
struct TYPE_5__ {int /*<<< orphan*/  cursorY; int /*<<< orphan*/  cursorX; int /*<<< orphan*/ * capturedItem; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGAME_EVENT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int K_MOUSE2 ; 
 scalar_t__ PM_NORMAL ; 
 scalar_t__ PM_SPECTATOR ; 
 TYPE_3__ cg ; 
 TYPE_2__ cgs ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(int key, qboolean down) {

	if (!down) {
		return;
	}

	if ( cg.predictedPlayerState.pm_type == PM_NORMAL || (cg.predictedPlayerState.pm_type == PM_SPECTATOR && cg.showScores == qfalse)) {
		FUNC0(CGAME_EVENT_NONE);
    FUNC3(0);
		return;
	}

  //if (key == trap_Key_GetKey("teamMenu") || !Display_CaptureItem(cgs.cursorX, cgs.cursorY)) {
    // if we see this then we should always be visible
  //  CG_EventHandling(CGAME_EVENT_NONE);
  //  trap_Key_SetCatcher(0);
  //}



  FUNC2(key, down, cgs.cursorX, cgs.cursorY);

	if (cgs.capturedItem) {
		cgs.capturedItem = NULL;
	}	else {
		if (key == K_MOUSE2 && down) {
			cgs.capturedItem = FUNC1(cgs.cursorX, cgs.cursorY);
		}
	}
}