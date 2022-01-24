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
struct cpuidle_driver {int dummy; } ;

/* Variables and functions */
 struct cpuidle_driver* FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct cpuidle_driver *FUNC3(void)
{
	struct cpuidle_driver *drv;
	int cpu;

	cpu = FUNC1();
	drv = FUNC0(cpu);
	FUNC2();

	return drv;
}