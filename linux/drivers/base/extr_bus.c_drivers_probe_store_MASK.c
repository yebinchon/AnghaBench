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
struct device {int dummy; } ;
struct bus_type {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct device* FUNC0 (struct bus_type*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct bus_type *bus,
				   const char *buf, size_t count)
{
	struct device *dev;
	int err = -EINVAL;

	dev = FUNC0(bus, NULL, buf);
	if (!dev)
		return -ENODEV;
	if (FUNC1(dev, NULL) == 0)
		err = count;
	FUNC2(dev);
	return err;
}