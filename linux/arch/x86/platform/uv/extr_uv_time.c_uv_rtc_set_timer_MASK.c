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
typedef  int /*<<< orphan*/  u64 ;
struct uv_rtc_timer_head {int next_cpu; int /*<<< orphan*/  lock; TYPE_1__* cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  ULLONG_MAX ; 
 struct uv_rtc_timer_head** blade_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct uv_rtc_timer_head*,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int cpu, u64 expires)
{
	int pnode = FUNC4(cpu);
	int bid = FUNC3(cpu);
	struct uv_rtc_timer_head *head = blade_info[bid];
	int bcpu = FUNC2(cpu);
	u64 *t = &head->cpu[bcpu].expires;
	unsigned long flags;
	int next_cpu;

	FUNC0(&head->lock, flags);

	next_cpu = head->next_cpu;
	*t = expires;

	/* Will this one be next to go off? */
	if (next_cpu < 0 || bcpu == next_cpu ||
			expires < head->cpu[next_cpu].expires) {
		head->next_cpu = bcpu;
		if (FUNC6(cpu, expires)) {
			*t = ULLONG_MAX;
			FUNC5(head, pnode);
			FUNC1(&head->lock, flags);
			return -ETIME;
		}
	}

	FUNC1(&head->lock, flags);
	return 0;
}