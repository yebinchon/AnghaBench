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
struct thread_info {scalar_t__* fpsaved; TYPE_1__* task; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 struct thread_info* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 

void FUNC3(void)
{
	struct thread_info *t = FUNC0();
	struct mm_struct *mm;

	mm = t->task->mm;
	if (mm)
		FUNC2(mm);

	FUNC1(0);

	/* Clear FPU register state. */
	t->fpsaved[0] = 0;
}