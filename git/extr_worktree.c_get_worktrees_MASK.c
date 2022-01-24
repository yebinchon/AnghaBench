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
struct worktree {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct worktree**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct worktree**,int,int) ; 
 unsigned int GWT_SORT_LINKED ; 
 int /*<<< orphan*/  FUNC2 (struct worktree**,int,int /*<<< orphan*/ ) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_worktree ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct worktree* FUNC5 (int /*<<< orphan*/ ) ; 
 struct worktree* FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct worktree**) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 

struct worktree **FUNC13(unsigned flags)
{
	struct worktree **list = NULL;
	struct strbuf path = STRBUF_INIT;
	DIR *dir;
	struct dirent *d;
	int counter = 0, alloc = 2;

	FUNC0(list, alloc);

	list[counter++] = FUNC6();

	FUNC11(&path, "%s/worktrees", FUNC4());
	dir = FUNC9(path.buf);
	FUNC12(&path);
	if (dir) {
		while ((d = FUNC10(dir)) != NULL) {
			struct worktree *linked = NULL;
			if (FUNC7(d->d_name))
				continue;

			if ((linked = FUNC5(d->d_name))) {
				FUNC1(list, counter + 1, alloc);
				list[counter++] = linked;
			}
		}
		FUNC3(dir);
	}
	FUNC1(list, counter + 1, alloc);
	list[counter] = NULL;

	if (flags & GWT_SORT_LINKED)
		/*
		 * don't sort the first item (main worktree), which will
		 * always be the first
		 */
		FUNC2(list + 1, counter - 1, compare_worktree);

	FUNC8(list);
	return list;
}