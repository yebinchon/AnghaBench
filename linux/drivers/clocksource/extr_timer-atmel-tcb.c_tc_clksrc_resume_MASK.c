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
struct clocksource {int dummy; } ;
struct TYPE_3__ {int cmr; int rc; int imr; scalar_t__ clken; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ ATMEL_TC_BCR ; 
 scalar_t__ ATMEL_TC_BMR ; 
 int ATMEL_TC_CLKEN ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int ATMEL_TC_SYNC ; 
 int /*<<< orphan*/  CCR ; 
 int /*<<< orphan*/  CMR ; 
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  RA ; 
 int /*<<< orphan*/  RB ; 
 int /*<<< orphan*/  RC ; 
 int bmr_cache ; 
 scalar_t__ tcaddr ; 
 TYPE_1__* tcb_cache ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct clocksource *cs)
{
	int i;

	for (i = 0; i < FUNC0(tcb_cache); i++) {
		/* Restore registers for the channel, RA and RB are not used  */
		FUNC2(tcb_cache[i].cmr, tcaddr + FUNC1(i, CMR));
		FUNC2(tcb_cache[i].rc, tcaddr + FUNC1(i, RC));
		FUNC2(0, tcaddr + FUNC1(i, RA));
		FUNC2(0, tcaddr + FUNC1(i, RB));
		/* Disable all the interrupts */
		FUNC2(0xff, tcaddr + FUNC1(i, IDR));
		/* Reenable interrupts that were enabled before suspending */
		FUNC2(tcb_cache[i].imr, tcaddr + FUNC1(i, IER));
		/* Start the clock if it was used */
		if (tcb_cache[i].clken)
			FUNC2(ATMEL_TC_CLKEN, tcaddr + FUNC1(i, CCR));
	}

	/* Dual channel, chain channels */
	FUNC2(bmr_cache, tcaddr + ATMEL_TC_BMR);
	/* Finally, trigger all the channels*/
	FUNC2(ATMEL_TC_SYNC, tcaddr + ATMEL_TC_BCR);
}