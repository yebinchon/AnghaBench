#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pm_type; } ;
struct TYPE_8__ {scalar_t__ showScores; TYPE_1__ predictedPlayerState; } ;
struct TYPE_6__ {scalar_t__ sizeCursor; scalar_t__ selectCursor; } ;
struct TYPE_7__ {int cursorX; int cursorY; int /*<<< orphan*/ * capturedItem; TYPE_2__ media; scalar_t__ activeCursor; } ;

/* Variables and functions */
 int CURSOR_ARROW ; 
 int CURSOR_SIZER ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ PM_NORMAL ; 
 scalar_t__ PM_SPECTATOR ; 
 TYPE_4__ cg ; 
 TYPE_3__ cgs ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(int x, int y) {
	int n;

	if ( (cg.predictedPlayerState.pm_type == PM_NORMAL || cg.predictedPlayerState.pm_type == PM_SPECTATOR) && cg.showScores == qfalse) {
    FUNC2(0);
		return;
	}

	cgs.cursorX+= x;
	if (cgs.cursorX < 0)
		cgs.cursorX = 0;
	else if (cgs.cursorX > 640)
		cgs.cursorX = 640;

	cgs.cursorY += y;
	if (cgs.cursorY < 0)
		cgs.cursorY = 0;
	else if (cgs.cursorY > 480)
		cgs.cursorY = 480;

	n = FUNC0(cgs.cursorX, cgs.cursorY);
	cgs.activeCursor = 0;
	if (n == CURSOR_ARROW) {
		cgs.activeCursor = cgs.media.selectCursor;
	} else if (n == CURSOR_SIZER) {
		cgs.activeCursor = cgs.media.sizeCursor;
	}

  if (cgs.capturedItem) {
	  FUNC1(cgs.capturedItem, x, y);
  } else {
	  FUNC1(NULL, cgs.cursorX, cgs.cursorY);
  }

}