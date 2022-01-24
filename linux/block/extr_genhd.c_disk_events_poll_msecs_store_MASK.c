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
struct gendisk {TYPE_1__* ev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {long poll_msecs; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*,int) ; 
 struct gendisk* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,long*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf, size_t count)
{
	struct gendisk *disk = FUNC1(dev);
	long intv;

	if (!count || !FUNC3(buf, "%ld", &intv))
		return -EINVAL;

	if (intv < 0 && intv != -1)
		return -EINVAL;

	if (!disk->ev)
		return -ENODEV;

	FUNC2(disk);
	disk->ev->poll_msecs = intv;
	FUNC0(disk, true);

	return count;
}