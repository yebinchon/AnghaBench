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
struct uv_rtc_timer_head {int next_cpu; int /*<<< orphan*/  lock; TYPE_1__* cpu; } ;
struct TYPE_2__ {scalar_t__ expires; } ;

/* Variables and functions */
 scalar_t__ ULLONG_MAX ; 
 struct uv_rtc_timer_head** blade_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uv_rtc_timer_head*,int) ; 

__attribute__((used)) static int FUNC7(int cpu, int force)
{
	int pnode = FUNC4(cpu);
	int bid = FUNC3(cpu);
	struct uv_rtc_timer_head *head = blade_info[bid];
	int bcpu = FUNC2(cpu);
	u64 *t = &head->cpu[bcpu].expires;
	unsigned long flags;
	int rc = 0;

	FUNC0(&head->lock, flags);

	if ((head->next_cpu == bcpu && FUNC5(NULL) >= *t) || force)
		rc = 1;

	if (rc) {
		*t = ULLONG_MAX;
		/* Was the hardware setup for this timer? */
		if (head->next_cpu == bcpu)
			FUNC6(head, pnode);
	}

	FUNC1(&head->lock, flags);

	return rc;
}