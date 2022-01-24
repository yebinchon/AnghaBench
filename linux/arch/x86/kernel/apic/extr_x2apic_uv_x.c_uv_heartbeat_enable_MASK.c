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
struct timer_list {scalar_t__ expires; } ;
struct TYPE_2__ {int enabled; struct timer_list timer; } ;

/* Variables and functions */
 int SCIR_CPU_ACTIVITY ; 
 scalar_t__ SCIR_CPU_HB_INTERVAL ; 
 int SCIR_CPU_HEARTBEAT ; 
 int /*<<< orphan*/  TIMER_PINNED ; 
 int /*<<< orphan*/  FUNC0 (struct timer_list*,unsigned int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  uv_heartbeat ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	while (!FUNC2(cpu)->enabled) {
		struct timer_list *timer = &FUNC2(cpu)->timer;

		FUNC3(cpu, SCIR_CPU_HEARTBEAT|SCIR_CPU_ACTIVITY);
		FUNC1(timer, uv_heartbeat, TIMER_PINNED);
		timer->expires = jiffies + SCIR_CPU_HB_INTERVAL;
		FUNC0(timer, cpu);
		FUNC2(cpu)->enabled = 1;

		/* Also ensure that boot CPU is enabled: */
		cpu = 0;
	}
	return 0;
}