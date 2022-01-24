#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
struct xive_q {int /*<<< orphan*/  count; int /*<<< orphan*/  pending_count; } ;
struct xive_cpu {int pending_prio; size_t cppr; struct xive_q* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ TM_CPPR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct xive_q*,int) ; 
 scalar_t__ xive_tima ; 
 scalar_t__ xive_tima_offset ; 

__attribute__((used)) static u32 FUNC10(struct xive_cpu *xc, bool just_peek)
{
	u32 irq = 0;
	u8 prio = 0;

	/* Find highest pending priority */
	while (xc->pending_prio != 0) {
		struct xive_q *q;

		prio = FUNC5(xc->pending_prio) - 1;
		FUNC0("scan_irq: trying prio %d\n", prio);

		/* Try to fetch */
		irq = FUNC9(&xc->queue[prio], just_peek);

		/* Found something ? That's it */
		if (irq) {
			if (just_peek || FUNC6(irq))
				break;
			/*
			 * We should never get here; if we do then we must
			 * have failed to synchronize the interrupt properly
			 * when shutting it down.
			 */
			FUNC8("xive: got interrupt %d without descriptor, dropping\n",
				irq);
			FUNC1(1);
			continue;
		}

		/* Clear pending bits */
		xc->pending_prio &= ~(1 << prio);

		/*
		 * Check if the queue count needs adjusting due to
		 * interrupts being moved away. See description of
		 * xive_dec_target_count()
		 */
		q = &xc->queue[prio];
		if (FUNC2(&q->pending_count)) {
			int p = FUNC4(&q->pending_count, 0);
			if (p) {
				FUNC1(p > FUNC2(&q->count));
				FUNC3(p, &q->count);
			}
		}
	}

	/* If nothing was found, set CPPR to 0xff */
	if (irq == 0)
		prio = 0xff;

	/* Update HW CPPR to match if necessary */
	if (prio != xc->cppr) {
		FUNC0("scan_irq: adjusting CPPR to %d\n", prio);
		xc->cppr = prio;
		FUNC7(xive_tima + xive_tima_offset + TM_CPPR, prio);
	}

	return irq;
}