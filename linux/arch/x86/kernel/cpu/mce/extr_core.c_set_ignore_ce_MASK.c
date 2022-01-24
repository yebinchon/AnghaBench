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
typedef  scalar_t__ u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int ignore_ce; } ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_1__ mca_cfg ; 
 int /*<<< orphan*/  mce_disable_cmci ; 
 int /*<<< orphan*/  mce_enable_ce ; 
 int /*<<< orphan*/  mce_sysfs_mutex ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *s,
			     struct device_attribute *attr,
			     const char *buf, size_t size)
{
	u64 new;

	if (FUNC0(buf, 0, &new) < 0)
		return -EINVAL;

	FUNC2(&mce_sysfs_mutex);
	if (mca_cfg.ignore_ce ^ !!new) {
		if (new) {
			/* disable ce features */
			FUNC1();
			FUNC4(mce_disable_cmci, NULL, 1);
			mca_cfg.ignore_ce = true;
		} else {
			/* enable ce features */
			mca_cfg.ignore_ce = false;
			FUNC4(mce_enable_ce, (void *)1, 1);
		}
	}
	FUNC3(&mce_sysfs_mutex);

	return size;
}