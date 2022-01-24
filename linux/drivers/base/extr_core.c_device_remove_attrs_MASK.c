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
struct device_type {int /*<<< orphan*/  groups; } ;
struct device {int /*<<< orphan*/  groups; struct device_type* type; struct class* class; } ;
struct class {int /*<<< orphan*/  dev_groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_online ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct class *class = dev->class;
	const struct device_type *type = dev->type;

	FUNC0(dev, &dev_attr_online);
	FUNC1(dev, dev->groups);

	if (type)
		FUNC1(dev, type->groups);

	if (class)
		FUNC1(dev, class->dev_groups);
}