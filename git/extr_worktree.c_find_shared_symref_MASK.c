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
struct worktree {scalar_t__ is_detached; scalar_t__ is_bare; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  FUNC0 (struct worktree**) ; 
 struct ref_store* FUNC1 (struct worktree*) ; 
 struct worktree** FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct worktree*,char const*) ; 
 scalar_t__ FUNC4 (struct worktree*,char const*) ; 
 char* FUNC5 (struct ref_store*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 

const struct worktree *FUNC7(const char *symref,
					  const char *target)
{
	const struct worktree *existing = NULL;
	static struct worktree **worktrees;
	int i = 0;

	if (worktrees)
		FUNC0(worktrees);
	worktrees = FUNC2(0);

	for (i = 0; worktrees[i]; i++) {
		struct worktree *wt = worktrees[i];
		const char *symref_target;
		struct ref_store *refs;
		int flags;

		if (wt->is_bare)
			continue;

		if (wt->is_detached && !FUNC6(symref, "HEAD")) {
			if (FUNC4(wt, target)) {
				existing = wt;
				break;
			}
			if (FUNC3(wt, target)) {
				existing = wt;
				break;
			}
		}

		refs = FUNC1(wt);
		symref_target = FUNC5(refs, symref, 0,
							NULL, &flags);
		if ((flags & REF_ISSYMREF) &&
		    symref_target && !FUNC6(symref_target, target)) {
			existing = wt;
			break;
		}
	}

	return existing;
}