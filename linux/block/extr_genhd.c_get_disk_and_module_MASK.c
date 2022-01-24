#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct kobject {int dummy; } ;
struct gendisk {TYPE_1__* fops; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {struct module* owner; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct gendisk*) ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 int /*<<< orphan*/  FUNC3 (struct module*) ; 

struct kobject *FUNC4(struct gendisk *disk)
{
	struct module *owner;
	struct kobject *kobj;

	if (!disk->fops)
		return NULL;
	owner = disk->fops->owner;
	if (owner && !FUNC3(owner))
		return NULL;
	kobj = FUNC1(&FUNC0(disk)->kobj);
	if (kobj == NULL) {
		FUNC2(owner);
		return NULL;
	}
	return kobj;

}