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
struct kobject {int dummy; } ;
struct driver_private {int /*<<< orphan*/  driver; } ;
struct driver_attribute {int /*<<< orphan*/  (* show ) (int /*<<< orphan*/ ,char*) ;} ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct driver_private* FUNC1 (struct kobject*) ; 
 struct driver_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct attribute *attr,
			     char *buf)
{
	struct driver_attribute *drv_attr = FUNC2(attr);
	struct driver_private *drv_priv = FUNC1(kobj);
	ssize_t ret = -EIO;

	if (drv_attr->show)
		ret = drv_attr->show(drv_priv->driver, buf);
	return ret;
}