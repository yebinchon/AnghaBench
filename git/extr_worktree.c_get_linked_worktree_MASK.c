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
struct worktree {int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct worktree*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC7 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 struct worktree* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

__attribute__((used)) static struct worktree *FUNC14(const char *id)
{
	struct worktree *worktree = NULL;
	struct strbuf path = STRBUF_INIT;
	struct strbuf worktree_path = STRBUF_INIT;

	if (!id)
		FUNC1("Missing linked worktree name");

	FUNC6(&path, the_repository, "worktrees/%s/gitdir", id);
	if (FUNC7(&worktree_path, path.buf, 0) <= 0)
		/* invalid gitdir file */
		goto done;

	FUNC10(&worktree_path);
	if (!FUNC11(&worktree_path, "/.git")) {
		FUNC9(&worktree_path);
		FUNC3(&worktree_path, ".");
		FUNC11(&worktree_path, "/.");
	}

	FUNC9(&path);
	FUNC4(&path, "%s/worktrees/%s/HEAD", FUNC2(), id);

	worktree = FUNC12(1, sizeof(*worktree));
	worktree->path = FUNC5(&worktree_path, NULL);
	worktree->id = FUNC13(id);
	FUNC0(worktree);

done:
	FUNC8(&path);
	FUNC8(&worktree_path);
	return worktree;
}