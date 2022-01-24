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
struct strbuf {int len; char* buf; } ;
struct repository_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_IMPLICIT_WORK_TREE_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_WORK_TREE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,struct repository_format*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ git_work_tree_cfg ; 
 int inside_git_dir ; 
 scalar_t__ inside_work_tree ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 char const* FUNC8 (char const*,struct strbuf*,struct repository_format*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int) ; 
 char* FUNC10 (char*,int) ; 

__attribute__((used)) static const char *FUNC11(struct strbuf *cwd, int offset,
				      struct repository_format *repo_fmt,
				      int *nongit_ok)
{
	int root_len;

	if (FUNC2(".", repo_fmt, nongit_ok))
		return NULL;

	FUNC7(GIT_IMPLICIT_WORK_TREE_ENVIRONMENT, "0", 1);

	/* --work-tree is set without --git-dir; use discovered one */
	if (FUNC4(GIT_WORK_TREE_ENVIRONMENT) || git_work_tree_cfg) {
		static const char *gitdir;

		gitdir = offset == cwd->len ? "." : FUNC10(cwd->buf, offset);
		if (FUNC1(cwd->buf))
			FUNC3(FUNC0("cannot come back to cwd"));
		return FUNC8(gitdir, cwd, repo_fmt, nongit_ok);
	}

	inside_git_dir = 1;
	inside_work_tree = 0;
	if (offset != cwd->len) {
		if (FUNC1(cwd->buf))
			FUNC3(FUNC0("cannot come back to cwd"));
		root_len = FUNC5(cwd->buf);
		FUNC9(cwd, offset > root_len ? offset : root_len);
		FUNC6(cwd->buf);
	}
	else
		FUNC6(".");
	return NULL;
}