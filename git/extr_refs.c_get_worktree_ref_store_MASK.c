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
struct worktree {char* id; scalar_t__ is_current; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_STORE_ALL_CAPS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ref_store* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct ref_store* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 struct ref_store* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,struct ref_store*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  worktree_ref_stores ; 

struct ref_store *FUNC6(const struct worktree *wt)
{
	struct ref_store *refs;
	const char *id;

	if (wt->is_current)
		return FUNC1(the_repository);

	id = wt->id ? wt->id : "/";
	refs = FUNC3(&worktree_ref_stores, id);
	if (refs)
		return refs;

	if (wt->id)
		refs = FUNC4(FUNC2("worktrees/%s", wt->id),
				      REF_STORE_ALL_CAPS);
	else
		refs = FUNC4(FUNC0(),
				      REF_STORE_ALL_CAPS);

	if (refs)
		FUNC5(&worktree_ref_stores, "worktree",
				       refs, id);
	return refs;
}