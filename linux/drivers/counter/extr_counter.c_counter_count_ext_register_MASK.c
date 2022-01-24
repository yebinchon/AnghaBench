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
struct counter_device_attr_group {int /*<<< orphan*/  attr_list; } ;
struct counter_count_ext_unit {struct counter_count_ext const* ext; struct counter_count* count; } ;
struct counter_count_ext {scalar_t__ write; scalar_t__ read; int /*<<< orphan*/  name; } ;
struct counter_count {size_t num_ext; struct counter_count_ext* ext; } ;
struct counter_attr_parm {char* prefix; struct counter_count_ext_unit* component; int /*<<< orphan*/ * store; int /*<<< orphan*/ * show; int /*<<< orphan*/  name; struct counter_device_attr_group* group; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct counter_attr_parm*) ; 
 int /*<<< orphan*/ * counter_count_ext_show ; 
 int /*<<< orphan*/ * counter_count_ext_store ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct counter_count_ext_unit*) ; 
 struct counter_count_ext_unit* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	struct counter_device_attr_group *const group,
	struct counter_count *const count)
{
	size_t i;
	const struct counter_count_ext *ext;
	struct counter_count_ext_unit *count_ext_comp;
	struct counter_attr_parm parm;
	int err;

	/* Create an attribute for each extension */
	for (i = 0 ; i < count->num_ext; i++) {
		ext = count->ext + i;

		/* Allocate count_ext attribute component */
		count_ext_comp = FUNC3(sizeof(*count_ext_comp), GFP_KERNEL);
		if (!count_ext_comp) {
			err = -ENOMEM;
			goto err_free_attr_list;
		}
		count_ext_comp->count = count;
		count_ext_comp->ext = ext;

		/* Allocate count_ext attribute */
		parm.group = group;
		parm.prefix = "";
		parm.name = ext->name;
		parm.show = (ext->read) ? counter_count_ext_show : NULL;
		parm.store = (ext->write) ? counter_count_ext_store : NULL;
		parm.component = count_ext_comp;
		err = FUNC0(&parm);
		if (err) {
			FUNC2(count_ext_comp);
			goto err_free_attr_list;
		}
	}

	return 0;

err_free_attr_list:
	FUNC1(&group->attr_list);
	return err;
}