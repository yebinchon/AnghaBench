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
struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long _TIF_SPEC_IB ; 
 unsigned long _TIF_WORK_CTXSW_NEXT ; 
 unsigned long _TIF_WORK_CTXSW_PREV ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  switch_to_cond_stibp ; 
 TYPE_1__* FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct task_struct *prev,
				   struct task_struct *next)
{
	unsigned long next_tif = FUNC3(next)->flags;
	unsigned long prev_tif = FUNC3(prev)->flags;

	if (FUNC0(CONFIG_SMP)) {
		/*
		 * Avoid __switch_to_xtra() invocation when conditional
		 * STIBP is disabled and the only different bit is
		 * TIF_SPEC_IB. For CONFIG_SMP=n TIF_SPEC_IB is not
		 * in the TIF_WORK_CTXSW masks.
		 */
		if (!FUNC2(&switch_to_cond_stibp)) {
			prev_tif &= ~_TIF_SPEC_IB;
			next_tif &= ~_TIF_SPEC_IB;
		}
	}

	/*
	 * __switch_to_xtra() handles debug registers, i/o bitmaps,
	 * speculation mitigations etc.
	 */
	if (FUNC4(next_tif & _TIF_WORK_CTXSW_NEXT ||
		     prev_tif & _TIF_WORK_CTXSW_PREV))
		FUNC1(prev, next);
}