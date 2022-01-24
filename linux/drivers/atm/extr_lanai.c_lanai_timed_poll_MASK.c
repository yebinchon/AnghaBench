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
struct timer_list {int dummy; } ;
struct lanai_dev {int conf1; int /*<<< orphan*/  timer; int /*<<< orphan*/  backlog_vccs; int /*<<< orphan*/  servicelock; } ;

/* Variables and functions */
 int CONFIG1_POWERDOWN ; 
 scalar_t__ LANAI_POLL_PERIOD ; 
 struct lanai_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lanai_dev*) ; 
 int /*<<< orphan*/  iter_dequeue ; 
 scalar_t__ jiffies ; 
 struct lanai_dev* lanai ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct lanai_dev*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  vcc_sklist_lock ; 
 int /*<<< orphan*/  FUNC10 (struct lanai_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct lanai_dev *lanai = FUNC0(lanai, t, timer);
#ifndef DEBUG_RW
	unsigned long flags;
#ifdef USE_POWERDOWN
	if (lanai->conf1 & CONFIG1_POWERDOWN)
		return;
#endif /* USE_POWERDOWN */
	FUNC3(flags);
	/* If we can grab the spinlock, check if any services need to be run */
	if (FUNC8(&lanai->servicelock)) {
		FUNC7(lanai);
		FUNC9(&lanai->servicelock);
	}
	/* ...and see if any backlogged VCs can make progress */
	/* unfortunately linux has no read_trylock() currently */
	FUNC5(&vcc_sklist_lock);
	FUNC10(lanai, lanai->backlog_vccs, iter_dequeue);
	FUNC6(&vcc_sklist_lock);
	FUNC2(flags);

	FUNC1(lanai);
#endif /* !DEBUG_RW */
	FUNC4(&lanai->timer, jiffies + LANAI_POLL_PERIOD);
}