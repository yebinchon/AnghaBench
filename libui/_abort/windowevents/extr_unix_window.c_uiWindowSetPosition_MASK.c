#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ changingPosition; int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ uiWindow ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(uiWindow *w, int x, int y)
{
	w->changingPosition = TRUE;
	FUNC0(w->window, x, y);
	// gtk_window_move() is asynchronous
	// we need to wait for a configure-event
	// thanks to hergertme in irc.gimp.net/#gtk+
	while (w->changingPosition)
		if (!FUNC1(1))
			break;		// stop early if uiQuit() called
}