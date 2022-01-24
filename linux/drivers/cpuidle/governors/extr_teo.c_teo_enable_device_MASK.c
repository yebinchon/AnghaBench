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
struct teo_cpu {int /*<<< orphan*/ * intervals; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int INTERVALS ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct teo_cpu*,int /*<<< orphan*/ ,int) ; 
 struct teo_cpu* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  teo_cpus ; 

__attribute__((used)) static int FUNC2(struct cpuidle_driver *drv,
			     struct cpuidle_device *dev)
{
	struct teo_cpu *cpu_data = FUNC1(&teo_cpus, dev->cpu);
	int i;

	FUNC0(cpu_data, 0, sizeof(*cpu_data));

	for (i = 0; i < INTERVALS; i++)
		cpu_data->intervals[i] = UINT_MAX;

	return 0;
}