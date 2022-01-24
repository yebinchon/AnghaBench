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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned long check_interval ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct device_attribute*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  mce_sysfs_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *s,
				      struct device_attribute *attr,
				      const char *buf, size_t size)
{
	unsigned long old_check_interval = check_interval;
	ssize_t ret = FUNC0(s, attr, buf, size);

	if (check_interval == old_check_interval)
		return ret;

	FUNC2(&mce_sysfs_mutex);
	FUNC1();
	FUNC3(&mce_sysfs_mutex);

	return ret;
}