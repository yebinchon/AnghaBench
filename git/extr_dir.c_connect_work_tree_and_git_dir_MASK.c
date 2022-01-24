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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,struct strbuf*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC11(const char *work_tree_,
				   const char *git_dir_,
				   int recurse_into_nested)
{
	struct strbuf gitfile_sb = STRBUF_INIT;
	struct strbuf cfg_sb = STRBUF_INIT;
	struct strbuf rel_path = STRBUF_INIT;
	char *git_dir, *work_tree;

	/* Prepare .git file */
	FUNC8(&gitfile_sb, "%s/.git", work_tree_);
	if (FUNC7(gitfile_sb.buf))
		FUNC2(FUNC0("could not create directories for %s"), gitfile_sb.buf);

	/* Prepare config file */
	FUNC8(&cfg_sb, "%s/config", git_dir_);
	if (FUNC7(cfg_sb.buf))
		FUNC2(FUNC0("could not create directories for %s"), cfg_sb.buf);

	git_dir = FUNC5(git_dir_, 1);
	work_tree = FUNC5(work_tree_, 1);

	/* Write .git file */
	FUNC10(gitfile_sb.buf, "gitdir: %s",
		   FUNC6(git_dir, work_tree, &rel_path));
	/* Update core.worktree setting */
	FUNC4(cfg_sb.buf, "core.worktree",
			       FUNC6(work_tree, git_dir, &rel_path));

	FUNC9(&gitfile_sb);
	FUNC9(&cfg_sb);
	FUNC9(&rel_path);

	if (recurse_into_nested)
		FUNC1(work_tree, git_dir);

	FUNC3(work_tree);
	FUNC3(git_dir);
}