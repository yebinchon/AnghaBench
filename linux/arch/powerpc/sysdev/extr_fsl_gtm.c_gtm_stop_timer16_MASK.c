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
struct gtm_timer {int /*<<< orphan*/  gtevr; int /*<<< orphan*/  gtcfr; struct gtm* gtm; } ;
struct gtm {int /*<<< orphan*/  lock; struct gtm_timer* timers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct gtm_timer *tmr)
{
	struct gtm *gtm = tmr->gtm;
	int num = tmr - &gtm->timers[0];
	unsigned long flags;

	FUNC3(&gtm->lock, flags);

	FUNC2(tmr->gtcfr, FUNC0(num));
	FUNC1(tmr->gtevr, 0xFFFF);

	FUNC4(&gtm->lock, flags);
}