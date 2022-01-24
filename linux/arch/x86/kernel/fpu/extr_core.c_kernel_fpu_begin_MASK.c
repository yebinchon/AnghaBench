#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fpu; } ;
struct TYPE_4__ {int flags; TYPE_1__ thread; } ;

/* Variables and functions */
 int PF_KTHREAD ; 
 int /*<<< orphan*/  TIF_NEED_FPU_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  in_kernel_fpu ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(void)
{
	FUNC4();

	FUNC0(!FUNC3());
	FUNC0(FUNC7(in_kernel_fpu));

	FUNC8(in_kernel_fpu, true);

	if (!(current->flags & PF_KTHREAD) &&
	    !FUNC6(TIF_NEED_FPU_LOAD)) {
		FUNC5(TIF_NEED_FPU_LOAD);
		/*
		 * Ignore return value -- we don't care if reg state
		 * is clobbered.
		 */
		FUNC2(&current->thread.fpu);
	}
	FUNC1();
}