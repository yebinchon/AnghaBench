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
typedef  scalar_t__ u64 ;
struct task_struct {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  system_timer; int /*<<< orphan*/  softirq_timer; int /*<<< orphan*/  hardirq_timer; int /*<<< orphan*/  guest_timer; scalar_t__ last_update_timer; } ;

/* Variables and functions */
 int PF_VCPU ; 
 TYPE_1__ S390_lowcore ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct task_struct *tsk)
{
	u64 timer;

	timer = S390_lowcore.last_update_timer;
	S390_lowcore.last_update_timer = FUNC0();
	timer -= S390_lowcore.last_update_timer;

	if ((tsk->flags & PF_VCPU) && (FUNC3() == 0))
		S390_lowcore.guest_timer += timer;
	else if (FUNC1())
		S390_lowcore.hardirq_timer += timer;
	else if (FUNC2())
		S390_lowcore.softirq_timer += timer;
	else
		S390_lowcore.system_timer += timer;

	FUNC4(timer);
}