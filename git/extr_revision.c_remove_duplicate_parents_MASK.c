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
struct treesame_state {int dummy; } ;
struct rev_info {int /*<<< orphan*/  treesame; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int TMP_MARK ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct commit*,int) ; 
 struct treesame_state* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct rev_info *revs, struct commit *commit)
{
	struct treesame_state *ts = FUNC1(&revs->treesame, &commit->object);
	struct commit_list **pp, *p;
	int surviving_parents;

	/* Examine existing parents while marking ones we have seen... */
	pp = &commit->parents;
	surviving_parents = 0;
	while ((p = *pp) != NULL) {
		struct commit *parent = p->item;
		if (parent->object.flags & TMP_MARK) {
			*pp = p->next;
			if (ts)
				FUNC0(revs, commit, surviving_parents);
			continue;
		}
		parent->object.flags |= TMP_MARK;
		surviving_parents++;
		pp = &p->next;
	}
	/* clear the temporary mark */
	for (p = commit->parents; p; p = p->next) {
		p->item->object.flags &= ~TMP_MARK;
	}
	/* no update_treesame() - removing duplicates can't affect TREESAME */
	return surviving_parents;
}