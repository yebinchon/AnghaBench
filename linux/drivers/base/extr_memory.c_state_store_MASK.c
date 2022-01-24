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
struct memory_block {int online_type; int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
#define  MMOP_OFFLINE 131 
#define  MMOP_ONLINE_KEEP 130 
#define  MMOP_ONLINE_KERNEL 129 
#define  MMOP_ONLINE_MOVABLE 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 struct memory_block* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct memory_block *mem = FUNC4(dev);
	int ret, online_type;

	ret = FUNC2();
	if (ret)
		return ret;

	if (FUNC3(buf, "online_kernel"))
		online_type = MMOP_ONLINE_KERNEL;
	else if (FUNC3(buf, "online_movable"))
		online_type = MMOP_ONLINE_MOVABLE;
	else if (FUNC3(buf, "online"))
		online_type = MMOP_ONLINE_KEEP;
	else if (FUNC3(buf, "offline"))
		online_type = MMOP_OFFLINE;
	else {
		ret = -EINVAL;
		goto err;
	}

	switch (online_type) {
	case MMOP_ONLINE_KERNEL:
	case MMOP_ONLINE_MOVABLE:
	case MMOP_ONLINE_KEEP:
		/* mem->online_type is protected by device_hotplug_lock */
		mem->online_type = online_type;
		ret = FUNC1(&mem->dev);
		break;
	case MMOP_OFFLINE:
		ret = FUNC0(&mem->dev);
		break;
	default:
		ret = -EINVAL; /* should never happen */
	}

err:
	FUNC5();

	if (ret < 0)
		return ret;
	if (ret)
		return -EINVAL;

	return count;
}