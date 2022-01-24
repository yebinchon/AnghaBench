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
struct nl_object {struct nl_cache* ce_cache; int /*<<< orphan*/  ce_list; } ;
struct nl_cache {int /*<<< orphan*/  c_nitems; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_object*,struct nl_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_object*) ; 

void FUNC4(struct nl_object *obj)
{
	struct nl_cache *cache = obj->ce_cache;

	if (cache == NULL)
		return;

	FUNC2(&obj->ce_list);
	obj->ce_cache = NULL;
	FUNC3(obj);
	cache->c_nitems--;

	FUNC0(1, "Deleted %p from cache %p <%s>.\n",
	       obj, cache, FUNC1(cache));
}