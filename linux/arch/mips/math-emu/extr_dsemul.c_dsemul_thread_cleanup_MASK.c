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
struct TYPE_2__ {int /*<<< orphan*/  bd_emu_frame; } ;
struct task_struct {scalar_t__ mm; TYPE_1__ thread; } ;

/* Variables and functions */
 int BD_EMUFRAME_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

bool FUNC4(struct task_struct *tsk)
{
	int fr_idx;

	/* Clear any allocated frame, retrieving its index */
	fr_idx = FUNC0(&tsk->thread.bd_emu_frame, BD_EMUFRAME_NONE);

	/* If no frame was allocated, we're done */
	if (fr_idx == BD_EMUFRAME_NONE)
		return false;

	FUNC2(tsk);

	/* Free the frame that this thread had allocated */
	if (tsk->mm)
		FUNC1(fr_idx, tsk->mm);

	FUNC3(tsk);
	return true;
}