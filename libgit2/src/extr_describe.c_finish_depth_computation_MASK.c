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
struct possible_tag {int flag_within; int /*<<< orphan*/  depth; } ;
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_pqueue ;
struct TYPE_6__ {int flags; int out_degree; struct TYPE_6__** parents; } ;
typedef  TYPE_1__ git_commit_list_node ;

/* Variables and functions */
 int SEEN ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC5(
	git_pqueue *list,
	git_revwalk *walk,
	struct possible_tag *best)
{
	unsigned long seen_commits = 0;
	int error, i;

	while (FUNC4(list) > 0) {
		git_commit_list_node *c = FUNC3(list);
		seen_commits++;
		if (c->flags & best->flag_within) {
			size_t index = 0;
			while (FUNC4(list) > index) {
				git_commit_list_node *i = FUNC1(list, index);
				if (!(i->flags & best->flag_within))
					break;
				index++;
			}
			if (index > FUNC4(list))
				break;
		} else
			best->depth++;
		for (i = 0; i < c->out_degree; i++) {
			git_commit_list_node *p = c->parents[i];
			if ((error = FUNC0(walk, p)) < 0)
				return error;
			if (!(p->flags & SEEN))
				if ((error = FUNC2(list, p)) < 0)
					return error;
			p->flags |= c->flags;
		}
	}
	return seen_commits;
}