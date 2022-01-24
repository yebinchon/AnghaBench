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
struct cpuidle_device_kobj {int /*<<< orphan*/  kobj_unregister; int /*<<< orphan*/  kobj; } ;
struct cpuidle_device {struct cpuidle_device_kobj* kobj_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device_kobj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cpuidle_device *dev)
{
	struct cpuidle_device_kobj *kdev = dev->kobj_dev;

	FUNC1(&kdev->kobj);
	FUNC2(&kdev->kobj_unregister);
	FUNC0(kdev);
}