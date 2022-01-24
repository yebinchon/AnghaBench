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
struct rev_info {int left_right; int first_parent_only; } ;
struct commit_list {TYPE_1__* item; struct commit_list* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  flags; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYMMETRIC_LEFT ; 
 int /*<<< orphan*/  UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,TYPE_2__*,char const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC5(struct rev_info *rev, const char *path,
		struct commit *left, struct commit *right,
		struct commit_list *merge_bases)
{
	struct commit_list *list;

	FUNC3(the_repository, rev, NULL);
	FUNC4(0, NULL, rev, NULL);
	rev->left_right = 1;
	rev->first_parent_only = 1;
	left->object.flags |= SYMMETRIC_LEFT;
	FUNC0(rev, &left->object, path);
	FUNC0(rev, &right->object, path);
	for (list = merge_bases; list; list = list->next) {
		list->item->object.flags |= UNINTERESTING;
		FUNC0(rev, &list->item->object,
			FUNC1(&list->item->object.oid));
	}
	return FUNC2(rev);
}