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
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  arm_cpuidle_suspend ; 

__attribute__((used)) static int FUNC1(struct cpuidle_device *dev,
				struct cpuidle_driver *drv, int idx)
{
	/*
	 * Pass idle state index to arm_cpuidle_suspend which in turn
	 * will call the CPU ops suspend protocol with idle index as a
	 * parameter.
	 */
	return FUNC0(arm_cpuidle_suspend, idx);
}