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
struct counter_name_unit {char* name; } ;
struct counter_device_attr_group {int dummy; } ;
struct counter_attr_parm {char* prefix; char* name; struct counter_name_unit* component; int /*<<< orphan*/ * store; int /*<<< orphan*/  show; struct counter_device_attr_group* group; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct counter_attr_parm*) ; 
 int /*<<< orphan*/  counter_device_attr_name_show ; 
 int /*<<< orphan*/  FUNC1 (struct counter_name_unit*) ; 
 struct counter_name_unit* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
	struct counter_device_attr_group *const group,
	const char *const name)
{
	struct counter_name_unit *name_comp;
	struct counter_attr_parm parm;
	int err;

	/* Skip if no name */
	if (!name)
		return 0;

	/* Allocate name attribute component */
	name_comp = FUNC2(sizeof(*name_comp), GFP_KERNEL);
	if (!name_comp)
		return -ENOMEM;
	name_comp->name = name;

	/* Allocate Signal name attribute */
	parm.group = group;
	parm.prefix = "";
	parm.name = "name";
	parm.show = counter_device_attr_name_show;
	parm.store = NULL;
	parm.component = name_comp;
	err = FUNC0(&parm);
	if (err)
		goto err_free_name_comp;

	return 0;

err_free_name_comp:
	FUNC1(name_comp);
	return err;
}