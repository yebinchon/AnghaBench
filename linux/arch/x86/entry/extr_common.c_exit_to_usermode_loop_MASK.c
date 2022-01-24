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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EXIT_TO_USERMODE_LOOP_FLAGS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIF_NOTIFY_RESUME ; 
 int _TIF_NEED_RESCHED ; 
 int _TIF_NOTIFY_RESUME ; 
 int _TIF_PATCH_PENDING ; 
 int _TIF_SIGPENDING ; 
 int _TIF_UPROBE ; 
 int _TIF_USER_RETURN_NOTIFY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC11 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC12(struct pt_regs *regs, u32 cached_flags)
{
	/*
	 * In order to return to user mode, we need to have IRQs off with
	 * none of EXIT_TO_USERMODE_LOOP_FLAGS set.  Several of these flags
	 * can be set at any time on preemptible kernels if we have IRQs on,
	 * so we need to loop.  Disabling preemption wouldn't help: doing the
	 * work to clear some of the flags can sleep.
	 */
	while (true) {
		/* We have work to do. */
		FUNC7();

		if (cached_flags & _TIF_NEED_RESCHED)
			FUNC9();

		if (cached_flags & _TIF_UPROBE)
			FUNC11(regs);

		if (cached_flags & _TIF_PATCH_PENDING)
			FUNC5(current);

		/* deal with pending signal delivery */
		if (cached_flags & _TIF_SIGPENDING)
			FUNC3(regs);

		if (cached_flags & _TIF_NOTIFY_RESUME) {
			FUNC1(TIF_NOTIFY_RESUME);
			FUNC10(regs);
			FUNC8(NULL, regs);
		}

		if (cached_flags & _TIF_USER_RETURN_NOTIFY)
			FUNC4();

		/* Disable IRQs and retry */
		FUNC6();

		cached_flags = FUNC0(FUNC2()->flags);

		if (!(cached_flags & EXIT_TO_USERMODE_LOOP_FLAGS))
			break;
	}
}