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
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMP_MARK ; 
 int FUNC0 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_list*) ; 
 struct commit_list* FUNC3 (struct commit_list*) ; 

__attribute__((used)) static int FUNC4(struct commit *commit)
{
	struct commit_list *h = FUNC3(commit->parents);
	int i = 0, marked = 0;
	struct commit_list *po, *pn;

	/* Want these for sanity-checking only */
	int orig_cnt = FUNC0(commit->parents);
	int cnt = FUNC0(h);

	/*
	 * Not ready to remove items yet, just mark them for now, based
	 * on the output of reduce_heads(). reduce_heads outputs the reduced
	 * set in its original order, so this isn't too hard.
	 */
	po = commit->parents;
	pn = h;
	while (po) {
		if (pn && po->item == pn->item) {
			pn = pn->next;
			i++;
		} else {
			po->item->object.flags |= TMP_MARK;
			marked++;
		}
		po=po->next;
	}

	if (i != cnt || cnt+marked != orig_cnt)
		FUNC1("mark_redundant_parents %d %d %d %d", orig_cnt, cnt, i, marked);

	FUNC2(h);

	return marked;
}