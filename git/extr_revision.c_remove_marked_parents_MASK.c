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
struct rev_info {int dummy; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int TMP_MARK ; 
 int TREESAME ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct commit*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct commit*) ; 

__attribute__((used)) static int FUNC3(struct rev_info *revs, struct commit *commit)
{
	struct commit_list **pp, *p;
	int nth_parent, removed = 0;

	pp = &commit->parents;
	nth_parent = 0;
	while ((p = *pp) != NULL) {
		struct commit *parent = p->item;
		if (parent->object.flags & TMP_MARK) {
			parent->object.flags &= ~TMP_MARK;
			*pp = p->next;
			FUNC1(p);
			removed++;
			FUNC0(revs, commit, nth_parent);
			continue;
		}
		pp = &p->next;
		nth_parent++;
	}

	/* Removing parents can only increase TREESAMEness */
	if (removed && !(commit->object.flags & TREESAME))
		FUNC2(revs, commit);

	return nth_parent;
}