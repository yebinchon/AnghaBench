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
struct nl_object_ops {int oo_size; int /*<<< orphan*/  (* oo_constructor ) (struct nl_object*) ;} ;
struct nl_object {int ce_refcnt; struct nl_object_ops* ce_ops; int /*<<< orphan*/  ce_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct nl_object*) ; 
 struct nl_object* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nl_object*) ; 

struct nl_object *FUNC5(struct nl_object_ops *ops)
{
	struct nl_object *new;

	if (ops->oo_size < sizeof(*new))
		FUNC0();

	new = FUNC2(1, ops->oo_size);
	if (!new)
		return NULL;

	new->ce_refcnt = 1;
	FUNC3(&new->ce_list);

	new->ce_ops = ops;
	if (ops->oo_constructor)
		ops->oo_constructor(new);

	FUNC1(4, "Allocated new object %p\n", new);

	return new;
}