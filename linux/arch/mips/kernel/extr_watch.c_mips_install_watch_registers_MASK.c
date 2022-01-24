#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mips3264_watch_reg_state {unsigned int* watchhi; int /*<<< orphan*/ * watchlo; } ;
struct TYPE_4__ {struct mips3264_watch_reg_state mips3264; } ;
struct TYPE_5__ {TYPE_1__ watch; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_6__ {int watch_reg_use_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int MIPS_WATCHHI_G ; 
 unsigned int MIPS_WATCHHI_IRW ; 
 TYPE_3__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct task_struct *t)
{
	struct mips3264_watch_reg_state *watches = &t->thread.watch.mips3264;
	unsigned int watchhi = MIPS_WATCHHI_G |		/* Trap all ASIDs */
			       MIPS_WATCHHI_IRW;	/* Clear result bits */

	switch (current_cpu_data.watch_reg_use_cnt) {
	default:
		FUNC0();
	case 4:
		FUNC8(watches->watchlo[3]);
		FUNC4(watchhi | watches->watchhi[3]);
		/* fall through */
	case 3:
		FUNC7(watches->watchlo[2]);
		FUNC3(watchhi | watches->watchhi[2]);
		/* fall through */
	case 2:
		FUNC6(watches->watchlo[1]);
		FUNC2(watchhi | watches->watchhi[1]);
		/* fall through */
	case 1:
		FUNC5(watches->watchlo[0]);
		FUNC1(watchhi | watches->watchhi[0]);
	}
}