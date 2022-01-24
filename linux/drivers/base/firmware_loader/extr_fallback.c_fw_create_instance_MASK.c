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
struct device {int /*<<< orphan*/  groups; int /*<<< orphan*/ * class; struct device* parent; } ;
struct fw_sysfs {int nowait; struct device dev; struct firmware* fw; } ;
struct firmware {int dummy; } ;
typedef  enum fw_opt { ____Placeholder_fw_opt } fw_opt ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fw_sysfs* FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_OPT_NOWAIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  firmware_class ; 
 int /*<<< orphan*/  fw_dev_attr_groups ; 
 struct fw_sysfs* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fw_sysfs *
FUNC4(struct firmware *firmware, const char *fw_name,
		   struct device *device, enum fw_opt opt_flags)
{
	struct fw_sysfs *fw_sysfs;
	struct device *f_dev;

	fw_sysfs = FUNC3(sizeof(*fw_sysfs), GFP_KERNEL);
	if (!fw_sysfs) {
		fw_sysfs = FUNC0(-ENOMEM);
		goto exit;
	}

	fw_sysfs->nowait = !!(opt_flags & FW_OPT_NOWAIT);
	fw_sysfs->fw = firmware;
	f_dev = &fw_sysfs->dev;

	FUNC2(f_dev);
	FUNC1(f_dev, "%s", fw_name);
	f_dev->parent = device;
	f_dev->class = &firmware_class;
	f_dev->groups = fw_dev_attr_groups;
exit:
	return fw_sysfs;
}