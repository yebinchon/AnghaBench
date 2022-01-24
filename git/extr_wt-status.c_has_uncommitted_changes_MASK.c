#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tree {int /*<<< orphan*/  object; } ;
struct TYPE_6__ {int ignore_submodules; int quick; } ;
struct TYPE_9__ {TYPE_1__ flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  nr; } ;
struct rev_info {TYPE_4__ diffopt; TYPE_2__ pending; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct TYPE_8__ {int /*<<< orphan*/  empty_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct tree* FUNC5 (struct repository*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*,struct rev_info*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct rev_info*,int) ; 
 TYPE_3__* the_hash_algo ; 

int FUNC8(struct repository *r,
			    int ignore_submodules)
{
	struct rev_info rev_info;
	int result;

	if (FUNC4(r->index))
		return 0;

	FUNC6(r, &rev_info, NULL);
	if (ignore_submodules)
		rev_info.diffopt.flags.ignore_submodules = 1;
	rev_info.diffopt.flags.quick = 1;

	FUNC0(&rev_info);
	if (!rev_info.pending.nr) {
		/*
		 * We have no head (or it's corrupt); use the empty tree,
		 * which will complain if the index is non-empty.
		 */
		struct tree *tree = FUNC5(r, the_hash_algo->empty_tree);
		FUNC1(&rev_info, &tree->object, "");
	}

	FUNC3(&rev_info.diffopt);
	result = FUNC7(&rev_info, 1);
	return FUNC2(&rev_info.diffopt, result);
}