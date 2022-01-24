#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  tgcr; int /*<<< orphan*/  tcr; int /*<<< orphan*/  prdlo; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSCR_DEVSTATE_ENABLED ; 
 int TCR_CLKSRCLO ; 
 int TCR_ENAMODELO_MASK ; 
 int TCR_PWIDLO_MASK ; 
 int TGCR_TIMLORS ; 
 int TGCR_TIMMODE_MASK ; 
 int TGCR_TIMMODE_UD32 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* timer ; 
 scalar_t__ timer64_devstate_id ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 val;

	if (timer64_devstate_id >= 0)
		FUNC0(timer64_devstate_id, DSCR_DEVSTATE_ENABLED);

	/* disable timer, reset count */
	FUNC2(FUNC1(&timer->tcr) & ~TCR_ENAMODELO_MASK, &timer->tcr);
	FUNC2(0, &timer->prdlo);

	/* use internal clock and 1 cycle pulse width */
	val = FUNC1(&timer->tcr);
	FUNC2(val & ~(TCR_CLKSRCLO | TCR_PWIDLO_MASK), &timer->tcr);

	/* dual 32-bit unchained mode */
	val = FUNC1(&timer->tgcr) & ~TGCR_TIMMODE_MASK;
	FUNC2(val, &timer->tgcr);
	FUNC2(val | (TGCR_TIMLORS | TGCR_TIMMODE_UD32), &timer->tgcr);
}