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
struct worktree {int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct worktree*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC9(struct worktree *wt, const char *path_)
{
	struct strbuf path = STRBUF_INIT;

	if (FUNC4(wt))
		FUNC0("can't relocate main worktree");

	FUNC6(&path, path_, 1);
	if (FUNC2(wt->path, path.buf)) {
		FUNC8(FUNC3("worktrees/%s/gitdir", wt->id),
			   "%s/.git", path.buf);
		FUNC1(wt->path);
		wt->path = FUNC5(&path, NULL);
	}
	FUNC7(&path);
}