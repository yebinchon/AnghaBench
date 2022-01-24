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
struct thread_info {int* utraps; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 struct thread_info* FUNC1 (struct task_struct*) ; 

void FUNC2(struct task_struct *tsk)
{
	struct thread_info *t = FUNC1(tsk);

	if (t->utraps) {
		if (t->utraps[0] < 2)
			FUNC0 (t->utraps);
		else
			t->utraps[0]--;
	}
}