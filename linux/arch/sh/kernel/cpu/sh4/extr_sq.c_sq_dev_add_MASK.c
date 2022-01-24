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
struct subsys_interface {int dummy; } ;
struct kobject {int dummy; } ;
struct device {unsigned int id; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC0 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_percpu_entry ; 
 struct kobject* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct kobject** sq_kobject ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct subsys_interface *sif)
{
	unsigned int cpu = dev->id;
	struct kobject *kobj;
	int error;

	sq_kobject[cpu] = FUNC2(sizeof(struct kobject), GFP_KERNEL);
	if (FUNC3(!sq_kobject[cpu]))
		return -ENOMEM;

	kobj = sq_kobject[cpu];
	error = FUNC0(kobj, &ktype_percpu_entry, &dev->kobj,
				     "%s", "sq");
	if (!error)
		FUNC1(kobj, KOBJ_ADD);
	return error;
}