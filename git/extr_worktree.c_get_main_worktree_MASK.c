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
struct worktree {int is_bare; int /*<<< orphan*/  path; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct worktree*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int is_bare_repository_cfg ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 struct worktree* FUNC8 (int,int) ; 

__attribute__((used)) static struct worktree *FUNC9(void)
{
	struct worktree *worktree = NULL;
	struct strbuf path = STRBUF_INIT;
	struct strbuf worktree_path = STRBUF_INIT;

	FUNC3(&worktree_path, FUNC1());
	if (!FUNC7(&worktree_path, "/.git"))
		FUNC7(&worktree_path, "/.");

	FUNC4(&path, "%s/HEAD", FUNC1());

	worktree = FUNC8(1, sizeof(*worktree));
	worktree->path = FUNC5(&worktree_path, NULL);
	/*
	 * NEEDSWORK: If this function is called from a secondary worktree and
	 * config.worktree is present, is_bare_repository_cfg will reflect the
	 * contents of config.worktree, not the contents of the main worktree.
	 * This means that worktree->is_bare may be set to 0 even if the main
	 * worktree is configured to be bare.
	 */
	worktree->is_bare = (is_bare_repository_cfg == 1) ||
		FUNC2();
	FUNC0(worktree);

	FUNC6(&path);
	FUNC6(&worktree_path);
	return worktree;
}