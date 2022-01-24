#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sigscratch {int /*<<< orphan*/  pt; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_5__ {scalar_t__ pfm_needs_checking; } ;
struct TYPE_7__ {TYPE_1__ thread; } ;
struct TYPE_6__ {int lp; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_NOTIFY_RESUME ; 
 int /*<<< orphan*/  TIF_RESTORE_RSE ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 TYPE_3__* current ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sigscratch*,long) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

void
FUNC11(sigset_t *unused, struct sigscratch *scr, long in_syscall)
{
	if (FUNC0(current, &scr->pt)) {
		/*
		 * defer signal-handling etc. until we return to
		 * privilege-level 0.
		 */
		if (!FUNC2(&scr->pt)->lp)
			FUNC2(&scr->pt)->lp = 1;
		return;
	}

#ifdef CONFIG_PERFMON
	if (current->thread.pfm_needs_checking)
		/*
		 * Note: pfm_handle_work() allow us to call it with interrupts
		 * disabled, and may enable interrupts within the function.
		 */
		pfm_handle_work();
#endif

	/* deal with pending signal delivery */
	if (FUNC8(TIF_SIGPENDING)) {
		FUNC5();	/* force interrupt enable */
		FUNC1(scr, in_syscall);
	}

	if (FUNC7(TIF_NOTIFY_RESUME)) {
		FUNC5();	/* force interrupt enable */
		FUNC9(&scr->pt);
	}

	/* copy user rbs to kernel rbs */
	if (FUNC10(FUNC8(TIF_RESTORE_RSE))) {
		FUNC5();	/* force interrupt enable */
		FUNC3();
	}

	FUNC4();	/* force interrupt disable */
}