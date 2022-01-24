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
struct timer_list {int dummy; } ;
struct ace_device {int fsm_continue_flag; int /*<<< orphan*/  lock; int /*<<< orphan*/  stall_timer; int /*<<< orphan*/  data_count; int /*<<< orphan*/  fsm_iter_num; int /*<<< orphan*/  fsm_task; int /*<<< orphan*/  fsm_state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 struct ace_device* ace ; 
 int /*<<< orphan*/  FUNC0 (struct ace_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ace_device* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  stall_timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct ace_device *ace = FUNC2(ace, t, stall_timer);
	unsigned long flags;

	FUNC1(ace->dev,
		 "kicking stalled fsm; state=%i task=%i iter=%i dc=%i\n",
		 ace->fsm_state, ace->fsm_task, ace->fsm_iter_num,
		 ace->data_count);
	FUNC4(&ace->lock, flags);

	/* Rearm the stall timer *before* entering FSM (which may then
	 * delete the timer) */
	FUNC3(&ace->stall_timer, jiffies + HZ);

	/* Loop over state machine until told to stop */
	ace->fsm_continue_flag = 1;
	while (ace->fsm_continue_flag)
		FUNC0(ace);

	FUNC5(&ace->lock, flags);
}