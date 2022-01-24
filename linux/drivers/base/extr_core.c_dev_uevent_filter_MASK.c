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
struct kset {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_type {int dummy; } ;
struct device {scalar_t__ class; scalar_t__ bus; } ;

/* Variables and functions */
 struct kobj_type device_ktype ; 
 struct kobj_type* FUNC0 (struct kobject*) ; 
 struct device* FUNC1 (struct kobject*) ; 

__attribute__((used)) static int FUNC2(struct kset *kset, struct kobject *kobj)
{
	struct kobj_type *ktype = FUNC0(kobj);

	if (ktype == &device_ktype) {
		struct device *dev = FUNC1(kobj);
		if (dev->bus)
			return 1;
		if (dev->class)
			return 1;
	}
	return 0;
}