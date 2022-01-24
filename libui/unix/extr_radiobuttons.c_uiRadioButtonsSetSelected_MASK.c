#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* changing; int /*<<< orphan*/  buttons; } ;
typedef  TYPE_1__ uiRadioButtons ;
typedef  void* gboolean ;
typedef  int /*<<< orphan*/  GtkToggleButton ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (TYPE_1__*) ; 

void FUNC4(uiRadioButtons *r, int n)
{
	GtkToggleButton *tb;
	gboolean active;

	active = TRUE;
	// TODO this doesn't work
	if (n == -1) {
		n = FUNC3(r);
		if (n == -1)		// no selection; keep it that way
			return;
		active = FALSE;
	}
	tb = FUNC0(FUNC1(r->buttons, n));
	// this is easier than remembering all the signals
	r->changing = TRUE;
	FUNC2(tb, active);
	r->changing = FALSE;
}