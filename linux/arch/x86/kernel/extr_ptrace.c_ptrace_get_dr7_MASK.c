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
struct TYPE_2__ {int /*<<< orphan*/  disabled; } ;
struct perf_event {TYPE_1__ attr; } ;
struct arch_hw_breakpoint {int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int HBP_NUM ; 
 struct arch_hw_breakpoint* FUNC0 (struct perf_event*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct perf_event *bp[])
{
	int i;
	int dr7 = 0;
	struct arch_hw_breakpoint *info;

	for (i = 0; i < HBP_NUM; i++) {
		if (bp[i] && !bp[i]->attr.disabled) {
			info = FUNC0(bp[i]);
			dr7 |= FUNC1(i, info->len, info->type);
		}
	}

	return dr7;
}