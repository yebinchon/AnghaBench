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
struct kobject {int /*<<< orphan*/ * kset; } ;
struct class_dir {struct kobject kobj; struct class* class; } ;
struct class {int /*<<< orphan*/  name; TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  glue_dirs; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kobject* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  class_dir_ktype ; 
 int FUNC1 (struct kobject*,struct kobject*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*) ; 
 struct class_dir* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kobject *
FUNC5(struct class *class, struct kobject *parent_kobj)
{
	struct class_dir *dir;
	int retval;

	dir = FUNC4(sizeof(*dir), GFP_KERNEL);
	if (!dir)
		return FUNC0(-ENOMEM);

	dir->class = class;
	FUNC2(&dir->kobj, &class_dir_ktype);

	dir->kobj.kset = &class->p->glue_dirs;

	retval = FUNC1(&dir->kobj, parent_kobj, "%s", class->name);
	if (retval < 0) {
		FUNC3(&dir->kobj);
		return FUNC0(retval);
	}
	return &dir->kobj;
}