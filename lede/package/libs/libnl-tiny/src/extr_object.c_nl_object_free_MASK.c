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
struct nl_object_ops {int /*<<< orphan*/  (* oo_free_data ) (struct nl_object*) ;} ;
struct nl_object {scalar_t__ ce_refcnt; scalar_t__ ce_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_object*) ; 
 struct nl_object_ops* FUNC3 (struct nl_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nl_object*) ; 

void FUNC5(struct nl_object *obj)
{
	struct nl_object_ops *ops = FUNC3(obj);

	if (obj->ce_refcnt > 0)
		FUNC0(1, "Warning: Freeing object in use...\n");

	if (obj->ce_cache)
		FUNC2(obj);

	if (ops->oo_free_data)
		ops->oo_free_data(obj);

	FUNC1(obj);

	FUNC0(4, "Freed object %p\n", obj);
}