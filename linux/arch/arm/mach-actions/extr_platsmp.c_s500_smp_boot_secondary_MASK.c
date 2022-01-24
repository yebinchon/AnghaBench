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
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ OWL_CPU1_ADDR ; 
 scalar_t__ OWL_CPU1_FLAG ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ timer_base_addr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, struct task_struct *idle)
{
	int ret;

	ret = FUNC0(cpu);
	if (ret)
		return ret;

	FUNC2(10);

	FUNC1(cpu);

	FUNC3(0, timer_base_addr + OWL_CPU1_ADDR + (cpu - 1) * 4);
	FUNC3(0, timer_base_addr + OWL_CPU1_FLAG + (cpu - 1) * 4);

	return 0;
}