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

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  cpu_map_lock ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(unsigned int index)
{
	int mapped_cpu;
	unsigned long flag;

	FUNC2(&cpu_map_lock, flag);
	mapped_cpu = FUNC0(index);

#ifdef CONFIG_HOTPLUG_CPU
	while (unlikely(!cpu_online(mapped_cpu)))
		mapped_cpu = _map_to_cpu(index);
#endif
	FUNC3(&cpu_map_lock, flag);
	return mapped_cpu;
}