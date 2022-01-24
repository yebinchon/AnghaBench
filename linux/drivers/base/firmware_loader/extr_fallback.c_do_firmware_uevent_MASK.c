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
struct kobj_uevent_env {int dummy; } ;
struct fw_sysfs {int /*<<< orphan*/  nowait; TYPE_1__* fw_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fw_sysfs *fw_sysfs, struct kobj_uevent_env *env)
{
	if (FUNC1(env, "FIRMWARE=%s", fw_sysfs->fw_priv->fw_name))
		return -ENOMEM;
	if (FUNC1(env, "TIMEOUT=%i", FUNC0()))
		return -ENOMEM;
	if (FUNC1(env, "ASYNC=%d", fw_sysfs->nowait))
		return -ENOMEM;

	return 0;
}