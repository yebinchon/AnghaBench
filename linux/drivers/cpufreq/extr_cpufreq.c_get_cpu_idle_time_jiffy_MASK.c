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
struct TYPE_2__ {scalar_t__* cpustat; } ;

/* Variables and functions */
 size_t CPUTIME_IRQ ; 
 size_t CPUTIME_NICE ; 
 size_t CPUTIME_SOFTIRQ ; 
 size_t CPUTIME_STEAL ; 
 size_t CPUTIME_SYSTEM ; 
 size_t CPUTIME_USER ; 
 int /*<<< orphan*/  NSEC_PER_USEC ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (unsigned int) ; 

__attribute__((used)) static inline u64 FUNC4(unsigned int cpu, u64 *wall)
{
	u64 idle_time;
	u64 cur_wall_time;
	u64 busy_time;

	cur_wall_time = FUNC2(FUNC1());

	busy_time = FUNC3(cpu).cpustat[CPUTIME_USER];
	busy_time += FUNC3(cpu).cpustat[CPUTIME_SYSTEM];
	busy_time += FUNC3(cpu).cpustat[CPUTIME_IRQ];
	busy_time += FUNC3(cpu).cpustat[CPUTIME_SOFTIRQ];
	busy_time += FUNC3(cpu).cpustat[CPUTIME_STEAL];
	busy_time += FUNC3(cpu).cpustat[CPUTIME_NICE];

	idle_time = cur_wall_time - busy_time;
	if (wall)
		*wall = FUNC0(cur_wall_time, NSEC_PER_USEC);

	return FUNC0(idle_time, NSEC_PER_USEC);
}