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
struct nl_object {scalar_t__ ce_ops; int /*<<< orphan*/  ce_list; } ;
struct nl_cache {TYPE_1__* c_ops; } ;
struct TYPE_2__ {scalar_t__ co_obj_ops; } ;

/* Variables and functions */
 int NLE_NOMEM ; 
 int NLE_OBJ_MISMATCH ; 
 int FUNC0 (struct nl_cache*,struct nl_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nl_object* FUNC2 (struct nl_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_object*) ; 

int FUNC4(struct nl_cache *cache, struct nl_object *obj)
{
	struct nl_object *new;

	if (cache->c_ops->co_obj_ops != obj->ce_ops)
		return -NLE_OBJ_MISMATCH;

	if (!FUNC1(&obj->ce_list)) {
		new = FUNC2(obj);
		if (!new)
			return -NLE_NOMEM;
	} else {
		FUNC3(obj);
		new = obj;
	}

	return FUNC0(cache, new);
}