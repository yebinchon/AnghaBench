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
struct rev_info {struct commit_list* commits; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_list*) ; 
 int /*<<< orphan*/  line_log_rewrite_one ; 
 scalar_t__ FUNC1 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct commit*,int /*<<< orphan*/ ) ; 

int FUNC3(struct rev_info *rev)
{
	struct commit *commit;
	struct commit_list *list = rev->commits;
	struct commit_list *out = NULL, **pp = &out;

	while (list) {
		struct commit_list *to_free = NULL;
		commit = list->item;
		if (FUNC1(rev, commit)) {
			*pp = list;
			pp = &list->next;
		} else
			to_free = list;
		list = list->next;
		FUNC0(to_free);
	}
	*pp = NULL;

	for (list = out; list; list = list->next)
		FUNC2(rev, list->item, line_log_rewrite_one);

	rev->commits = out;

	return 0;
}