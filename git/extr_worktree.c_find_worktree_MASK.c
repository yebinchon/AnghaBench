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
struct worktree {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct worktree* FUNC0 (struct worktree**,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 

struct worktree *FUNC6(struct worktree **list,
			       const char *prefix,
			       const char *arg)
{
	struct worktree *wt;
	char *path;
	char *to_free = NULL;

	if ((wt = FUNC0(list, arg)))
		return wt;

	if (prefix)
		arg = to_free = FUNC3(prefix, arg);
	path = FUNC5(arg, 0);
	if (!path) {
		FUNC1(to_free);
		return NULL;
	}
	for (; *list; list++) {
		const char *wt_path = FUNC4((*list)->path);

		if (wt_path && !FUNC2(path, wt_path))
			break;
	}
	FUNC1(path);
	FUNC1(to_free);
	return *list;
}