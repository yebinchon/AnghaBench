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
struct uv_rtc_timer_head {int next_cpu; int ncpus; TYPE_1__* cpu; } ;
struct TYPE_2__ {scalar_t__ expires; int lcpu; } ;

/* Variables and functions */
 scalar_t__ ULLONG_MAX ; 
 int /*<<< orphan*/  UVH_RTC1_INT_CONFIG ; 
 int /*<<< orphan*/  UVH_RTC1_INT_CONFIG_M_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct uv_rtc_timer_head *head, int pnode)
{
	u64 lowest = ULLONG_MAX;
	int c, bcpu = -1;

	head->next_cpu = -1;
	for (c = 0; c < head->ncpus; c++) {
		u64 exp = head->cpu[c].expires;
		if (exp < lowest) {
			bcpu = c;
			lowest = exp;
		}
	}
	if (bcpu >= 0) {
		head->next_cpu = bcpu;
		c = head->cpu[bcpu].lcpu;
		if (FUNC1(c, lowest))
			/* If we didn't set it up in time, trigger */
			FUNC0(c);
	} else {
		FUNC2(pnode, UVH_RTC1_INT_CONFIG,
			UVH_RTC1_INT_CONFIG_M_MASK);
	}
}