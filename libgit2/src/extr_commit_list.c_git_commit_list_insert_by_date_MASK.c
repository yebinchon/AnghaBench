#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_commit_list_node ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  item; } ;
typedef  TYPE_1__ git_commit_list ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

git_commit_list *FUNC2(git_commit_list_node *item, git_commit_list **list_p)
{
	git_commit_list **pp = list_p;
	git_commit_list *p;

	while ((p = *pp) != NULL) {
		if (FUNC1(p->item, item) > 0)
			break;

		pp = &p->next;
	}

	return FUNC0(item, pp);
}