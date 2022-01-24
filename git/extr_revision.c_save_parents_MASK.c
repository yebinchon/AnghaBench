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
struct saved_parents {int dummy; } ;
struct rev_info {scalar_t__ saved_parents_slab; } ;
struct commit_list {int dummy; } ;
struct commit {scalar_t__ parents; } ;

/* Variables and functions */
 struct commit_list* EMPTY_PARENT_LIST ; 
 struct commit_list* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct commit_list** FUNC2 (scalar_t__,struct commit*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct rev_info *revs, struct commit *commit)
{
	struct commit_list **pp;

	if (!revs->saved_parents_slab) {
		revs->saved_parents_slab = FUNC3(sizeof(struct saved_parents));
		FUNC1(revs->saved_parents_slab);
	}

	pp = FUNC2(revs->saved_parents_slab, commit);

	/*
	 * When walking with reflogs, we may visit the same commit
	 * several times: once for each appearance in the reflog.
	 *
	 * In this case, save_parents() will be called multiple times.
	 * We want to keep only the first set of parents.  We need to
	 * store a sentinel value for an empty (i.e., NULL) parent
	 * list to distinguish it from a not-yet-saved list, however.
	 */
	if (*pp)
		return;
	if (commit->parents)
		*pp = FUNC0(commit->parents);
	else
		*pp = EMPTY_PARENT_LIST;
}