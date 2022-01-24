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
struct device {int /*<<< orphan*/  kobj; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	int rc;

	rc = FUNC1(&dev->kobj, buf, count);

	if (rc) {
		FUNC0(dev, "uevent: failed to send synthetic uevent\n");
		return rc;
	}

	return count;
}