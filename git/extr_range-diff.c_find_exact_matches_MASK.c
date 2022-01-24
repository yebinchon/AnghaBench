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
struct string_list {int nr; TYPE_1__* items; } ;
struct patch_util {int i; int matching; scalar_t__ diff; int /*<<< orphan*/  e; scalar_t__ diff_offset; scalar_t__ patch; } ;
struct hashmap {int dummy; } ;
typedef  int /*<<< orphan*/  hashmap_cmp_fn ;
struct TYPE_2__ {scalar_t__ string; struct patch_util* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  e ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hashmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct hashmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct patch_util* FUNC5 (struct hashmap*,struct patch_util*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ patch_util_cmp ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct string_list *a, struct string_list *b)
{
	struct hashmap map;
	int i;

	FUNC4(&map, (hashmap_cmp_fn)patch_util_cmp, NULL, 0);

	/* First, add the patches of a to a hash map */
	for (i = 0; i < a->nr; i++) {
		struct patch_util *util = a->items[i].util;

		util->i = i;
		util->patch = a->items[i].string;
		util->diff = util->patch + util->diff_offset;
		FUNC2(&util->e, FUNC6(util->diff));
		FUNC1(&map, &util->e);
	}

	/* Now try to find exact matches in b */
	for (i = 0; i < b->nr; i++) {
		struct patch_util *util = b->items[i].util, *other;

		util->i = i;
		util->patch = b->items[i].string;
		util->diff = util->patch + util->diff_offset;
		FUNC2(&util->e, FUNC6(util->diff));
		other = FUNC5(&map, util, e, NULL);
		if (other) {
			if (other->matching >= 0)
				FUNC0("already assigned!");

			other->matching = i;
			util->matching = other->i;
		}
	}

	FUNC3(&map);
}