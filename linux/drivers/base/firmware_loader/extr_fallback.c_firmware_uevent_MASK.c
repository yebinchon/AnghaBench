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
struct kobj_uevent_env {int dummy; } ;
struct fw_sysfs {scalar_t__ fw_priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fw_sysfs*,struct kobj_uevent_env*) ; 
 int /*<<< orphan*/  fw_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fw_sysfs* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct kobj_uevent_env *env)
{
	struct fw_sysfs *fw_sysfs = FUNC3(dev);
	int err = 0;

	FUNC1(&fw_lock);
	if (fw_sysfs->fw_priv)
		err = FUNC0(fw_sysfs, env);
	FUNC2(&fw_lock);
	return err;
}