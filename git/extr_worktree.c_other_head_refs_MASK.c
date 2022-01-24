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
struct worktree {scalar_t__ is_current; } ;
struct object_id {int dummy; } ;
typedef  int (* each_ref_fn ) (int /*<<< orphan*/ ,struct object_id*,int,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  FUNC0 (struct worktree**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct worktree** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,int*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC4 (struct worktree*,char*) ; 

int FUNC5(each_ref_fn fn, void *cb_data)
{
	struct worktree **worktrees, **p;
	int ret = 0;

	worktrees = FUNC2(0);
	for (p = worktrees; *p; p++) {
		struct worktree *wt = *p;
		struct object_id oid;
		int flag;

		if (wt->is_current)
			continue;

		if (!FUNC3(FUNC1(the_repository),
					FUNC4(wt, "HEAD"),
					RESOLVE_REF_READING,
					&oid, &flag))
			ret = fn(FUNC4(wt, "HEAD"), &oid, flag, cb_data);
		if (ret)
			break;
	}
	FUNC0(worktrees);
	return ret;
}