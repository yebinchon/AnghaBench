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
struct TYPE_4__ {int flags; int left; int right; scalar_t__ top; scalar_t__ bottom; } ;
typedef  TYPE_1__ menucommon_s ;
struct TYPE_6__ {int nitems; int cursor; size_t cursor_prev; scalar_t__* items; } ;
struct TYPE_5__ {int bias; int xscale; int cursorx; scalar_t__ cursory; TYPE_3__* activemenu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_LOCAL_SOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int QMF_GRAYED ; 
 int QMF_HASMOUSEFOCUS ; 
 int QMF_INACTIVE ; 
 int QMF_SILENT ; 
 scalar_t__ SCREEN_HEIGHT ; 
 int SCREEN_WIDTH ; 
 int /*<<< orphan*/  menu_move_sound ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ uis ; 

void FUNC2( int dx, int dy )
{
	int				i;
	int				bias;
	menucommon_s*	m;

	if (!uis.activemenu)
		return;

	// convert X bias to 640 coords
	bias = uis.bias / uis.xscale;

	// update mouse screen position
	uis.cursorx += dx;
	if (uis.cursorx < -bias)
		uis.cursorx = -bias;
	else if (uis.cursorx > SCREEN_WIDTH+bias)
		uis.cursorx = SCREEN_WIDTH+bias;

	uis.cursory += dy;
	if (uis.cursory < 0)
		uis.cursory = 0;
	else if (uis.cursory > SCREEN_HEIGHT)
		uis.cursory = SCREEN_HEIGHT;

	// region test the active menu items
	for (i=0; i<uis.activemenu->nitems; i++)
	{
		m = (menucommon_s*)uis.activemenu->items[i];

		if (m->flags & (QMF_GRAYED|QMF_INACTIVE))
			continue;

		if ((uis.cursorx < m->left) ||
			(uis.cursorx > m->right) ||
			(uis.cursory < m->top) ||
			(uis.cursory > m->bottom))
		{
			// cursor out of item bounds
			continue;
		}

		// set focus to item at cursor
		if (uis.activemenu->cursor != i)
		{
			FUNC0( uis.activemenu, i );
			((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor_prev]))->flags &= ~QMF_HASMOUSEFOCUS;

			if ( !(((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor]))->flags & QMF_SILENT ) ) {
				FUNC1( menu_move_sound, CHAN_LOCAL_SOUND );
			}
		}

		((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor]))->flags |= QMF_HASMOUSEFOCUS;
		return;
	}  

	if (uis.activemenu->nitems > 0) {
		// out of any region
		((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor]))->flags &= ~QMF_HASMOUSEFOCUS;
	}
}