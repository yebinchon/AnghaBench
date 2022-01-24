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
struct TYPE_4__ {int /*<<< orphan*/  pbar; int /*<<< orphan*/  pulser; scalar_t__ indeterminate; } ;
typedef  TYPE_1__ uiProgressBar ;
typedef  int gdouble ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pulse ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void FUNC4(uiProgressBar *p, int value)
{
	if (value == -1) {
		if (!p->indeterminate) {
			p->indeterminate = TRUE;
			// TODO verify the timeout
			p->pulser = FUNC1(100, pulse, p);
		}
		return;
	}
	if (p->indeterminate) {
		p->indeterminate = FALSE;
		FUNC0(p->pulser);
	}

	if (value < 0 || value > 100)
		FUNC3("Value %d is out of range for a uiProgressBar.", value);

	FUNC2(p->pbar, ((gdouble) value) / 100);
}