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
typedef  int /*<<< orphan*/  u32 ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psci_cpu_suspend_enter ; 
 int /*<<< orphan*/  psci_power_state ; 

__attribute__((used)) static int FUNC2(struct cpuidle_device *dev,
				struct cpuidle_driver *drv, int idx)
{
	u32 *state = FUNC1(psci_power_state);

	return FUNC0(psci_cpu_suspend_enter,
					   idx, state[idx - 1]);
}