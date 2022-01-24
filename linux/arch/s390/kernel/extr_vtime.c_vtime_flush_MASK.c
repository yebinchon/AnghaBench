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
typedef  int u64 ;
struct task_struct {int dummy; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {int steal_timer; int avg_steal_timer; } ;

/* Variables and functions */
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct task_struct *tsk)
{
	u64 steal, avg_steal;

	if (FUNC1(tsk))
		FUNC2();

	steal = S390_lowcore.steal_timer;
	avg_steal = S390_lowcore.avg_steal_timer / 2;
	if ((s64) steal > 0) {
		S390_lowcore.steal_timer = 0;
		FUNC0(steal);
		avg_steal += steal;
	}
	S390_lowcore.avg_steal_timer = avg_steal;
}