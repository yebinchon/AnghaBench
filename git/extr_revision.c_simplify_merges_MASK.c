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
struct rev_info {struct commit_list* commits; int /*<<< orphan*/  prune; } ;
struct merge_simplify_state {struct commit* simplified; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {struct commit_list* next; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct commit*,struct commit_list**) ; 
 struct merge_simplify_state* FUNC1 (struct rev_info*,struct commit*) ; 
 struct commit* FUNC2 (struct commit_list**) ; 
 struct commit_list** FUNC3 (struct rev_info*,struct commit*,struct commit_list**) ; 

__attribute__((used)) static void FUNC4(struct rev_info *revs)
{
	struct commit_list *list, *next;
	struct commit_list *yet_to_do, **tail;
	struct commit *commit;

	if (!revs->prune)
		return;

	/* feed the list reversed */
	yet_to_do = NULL;
	for (list = revs->commits; list; list = next) {
		commit = list->item;
		next = list->next;
		/*
		 * Do not free(list) here yet; the original list
		 * is used later in this function.
		 */
		FUNC0(commit, &yet_to_do);
	}
	while (yet_to_do) {
		list = yet_to_do;
		yet_to_do = NULL;
		tail = &yet_to_do;
		while (list) {
			commit = FUNC2(&list);
			tail = FUNC3(revs, commit, tail);
		}
	}

	/* clean up the result, removing the simplified ones */
	list = revs->commits;
	revs->commits = NULL;
	tail = &revs->commits;
	while (list) {
		struct merge_simplify_state *st;

		commit = FUNC2(&list);
		st = FUNC1(revs, commit);
		if (st->simplified == commit)
			tail = &FUNC0(commit, tail)->next;
	}
}