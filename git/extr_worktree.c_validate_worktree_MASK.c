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
 unsigned int WT_VALIDATE_WORKTREE_MISSING_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct worktree const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(const struct worktree *wt, struct strbuf *errmsg,
		      unsigned flags)
{
	struct strbuf wt_path = STRBUF_INIT;
	char *path = NULL;
	int err, ret = -1;

	FUNC10(&wt_path, "%s/.git", wt->path);

	if (FUNC7(wt)) {
		if (FUNC6(wt_path.buf)) {
			ret = 0;
			goto done;
		}
		/*
		 * Main worktree using .git file to point to the
		 * repository would make it impossible to know where
		 * the actual worktree is if this function is executed
		 * from another worktree. No .git file support for now.
		 */
		FUNC11(errmsg,
				   FUNC0("'%s' at main working tree is not the repository directory"),
				   wt_path.buf);
		goto done;
	}

	/*
	 * Make sure "gitdir" file points to a real .git file and that
	 * file points back here.
	 */
	if (!FUNC5(wt->path)) {
		FUNC11(errmsg,
				   FUNC0("'%s' file does not contain absolute path to the working tree location"),
				   FUNC4("worktrees/%s/gitdir", wt->id));
		goto done;
	}

	if (flags & WT_VALIDATE_WORKTREE_MISSING_OK &&
	    !FUNC1(wt->path)) {
		ret = 0;
		goto done;
	}

	if (!FUNC1(wt_path.buf)) {
		FUNC11(errmsg, FUNC0("'%s' does not exist"), wt_path.buf);
		goto done;
	}

	path = FUNC13(FUNC8(wt_path.buf, &err));
	if (!path) {
		FUNC11(errmsg, FUNC0("'%s' is not a .git file, error code %d"),
				   wt_path.buf, err);
		goto done;
	}

	ret = FUNC3(path, FUNC9(FUNC4("worktrees/%s", wt->id)));

	if (ret)
		FUNC11(errmsg, FUNC0("'%s' does not point back to '%s'"),
				   wt->path, FUNC4("worktrees/%s", wt->id));
done:
	FUNC2(path);
	FUNC12(&wt_path);
	return ret;
}