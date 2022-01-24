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
struct cpuidle_state_kobj {int /*<<< orphan*/  kobj; int /*<<< orphan*/  kobj_unregister; struct cpuidle_device* device; int /*<<< orphan*/ * state_usage; int /*<<< orphan*/ * state; } ;
struct cpuidle_driver {int state_count; int /*<<< orphan*/ * states; } ;
struct cpuidle_device_kobj {int /*<<< orphan*/  kobj; } ;
struct cpuidle_device {struct cpuidle_state_kobj** kobjs; int /*<<< orphan*/ * states_usage; struct cpuidle_device_kobj* kobj_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct cpuidle_state_kobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_device*,int) ; 
 struct cpuidle_driver* FUNC2 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuidle_state_kobj*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_state_cpuidle ; 
 struct cpuidle_state_kobj* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cpuidle_device *device)
{
	int i, ret = -ENOMEM;
	struct cpuidle_state_kobj *kobj;
	struct cpuidle_device_kobj *kdev = device->kobj_dev;
	struct cpuidle_driver *drv = FUNC2(device);

	/* state statistics */
	for (i = 0; i < drv->state_count; i++) {
		kobj = FUNC7(sizeof(struct cpuidle_state_kobj), GFP_KERNEL);
		if (!kobj) {
			ret = -ENOMEM;
			goto error_state;
		}
		kobj->state = &drv->states[i];
		kobj->state_usage = &device->states_usage[i];
		kobj->device = device;
		FUNC3(&kobj->kobj_unregister);

		ret = FUNC5(&kobj->kobj, &ktype_state_cpuidle,
					   &kdev->kobj, "state%d", i);
		if (ret) {
			FUNC4(kobj);
			goto error_state;
		}
		FUNC0(kobj);
		FUNC6(&kobj->kobj, KOBJ_ADD);
		device->kobjs[i] = kobj;
	}

	return 0;

error_state:
	for (i = i - 1; i >= 0; i--)
		FUNC1(device, i);
	return ret;
}