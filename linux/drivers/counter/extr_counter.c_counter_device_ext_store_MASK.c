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
struct counter_ext_unit {struct counter_device_ext* ext; } ;
struct counter_device_ext {int /*<<< orphan*/  priv; int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t) ;} ;
struct counter_device_attr {struct counter_ext_unit* component; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t) ; 
 struct counter_device_attr* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t len)
{
	const struct counter_device_attr *const devattr = FUNC2(attr);
	const struct counter_ext_unit *const component = devattr->component;
	const struct counter_device_ext *const ext = component->ext;

	return ext->write(FUNC0(dev), ext->priv, buf, len);
}