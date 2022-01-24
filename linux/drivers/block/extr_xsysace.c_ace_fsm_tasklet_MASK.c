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
struct ace_device {int fsm_continue_flag; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ace_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct ace_device *ace = (void *)data;
	unsigned long flags;

	FUNC1(&ace->lock, flags);

	/* Loop over state machine until told to stop */
	ace->fsm_continue_flag = 1;
	while (ace->fsm_continue_flag)
		FUNC0(ace);

	FUNC2(&ace->lock, flags);
}