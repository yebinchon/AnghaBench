#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wtopts ;
struct TYPE_36__ {scalar_t__ ref; scalar_t__ lock; } ;
typedef  TYPE_2__ git_worktree_add_options ;
typedef  int /*<<< orphan*/  git_worktree ;
struct TYPE_37__ {char const* commondir; } ;
typedef  TYPE_3__ git_repository ;
struct TYPE_35__ {int /*<<< orphan*/  oid; } ;
struct TYPE_38__ {TYPE_1__ target; } ;
typedef  TYPE_4__ git_reference ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_39__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_5__ git_checkout_options ;
struct TYPE_40__ {char const* ptr; } ;
typedef  TYPE_6__ git_buf ;

/* Variables and functions */
 TYPE_6__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_5__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ERROR_WORKTREE ; 
 int /*<<< orphan*/  GIT_MKDIR_EXCL ; 
 TYPE_2__ GIT_WORKTREE_ADD_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_WORKTREE_ADD_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__**,TYPE_3__*,char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int FUNC6 (TYPE_6__*,char const*,char const*) ; 
 int FUNC7 (TYPE_6__*,char*,char const*) ; 
 int FUNC8 (TYPE_6__*,char) ; 
 int FUNC9 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int FUNC15 (TYPE_6__*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_4__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int FUNC20 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int FUNC22 (TYPE_4__**,TYPE_3__*) ; 
 int FUNC23 (TYPE_3__**,char const*) ; 
 int FUNC24 (int /*<<< orphan*/ **,TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int FUNC27 (char const*,int) ; 
 int FUNC28 (char const*,char*,TYPE_6__*) ; 

int FUNC29(git_worktree **out, git_repository *repo,
	const char *name, const char *worktree,
	const git_worktree_add_options *opts)
{
	git_buf gitdir = GIT_BUF_INIT, wddir = GIT_BUF_INIT, buf = GIT_BUF_INIT;
	git_reference *ref = NULL, *head = NULL;
	git_commit *commit = NULL;
	git_repository *wt = NULL;
	git_checkout_options coopts = GIT_CHECKOUT_OPTIONS_INIT;
	git_worktree_add_options wtopts = GIT_WORKTREE_ADD_OPTIONS_INIT;
	int err;

	FUNC0(
		opts, GIT_WORKTREE_ADD_OPTIONS_VERSION, "git_worktree_add_options");

	if (opts)
		FUNC25(&wtopts, opts, sizeof(wtopts));

	FUNC1(out && repo && name && worktree);

	*out = NULL;

	if (wtopts.ref) {
		if (!FUNC18(wtopts.ref)) {
			FUNC12(GIT_ERROR_WORKTREE, "reference is not a branch");
			err = -1;
			goto out;
		}

		if (FUNC3(wtopts.ref)) {
			FUNC12(GIT_ERROR_WORKTREE, "reference is already checked out");
			err = -1;
			goto out;
		}
	}

	/* Create gitdir directory ".git/worktrees/<name>" */
	if ((err = FUNC6(&gitdir, repo->commondir, "worktrees")) < 0)
		goto out;
	if (!FUNC14(gitdir.ptr))
		if ((err = FUNC13(gitdir.ptr, 0755, GIT_MKDIR_EXCL)) < 0)
			goto out;
	if ((err = FUNC6(&gitdir, gitdir.ptr, name)) < 0)
		goto out;
	if ((err = FUNC13(gitdir.ptr, 0755, GIT_MKDIR_EXCL)) < 0)
		goto out;
	if ((err = FUNC15(&gitdir, gitdir.ptr, NULL)) < 0)
		goto out;

	/* Create worktree work dir */
	if ((err = FUNC13(worktree, 0755, GIT_MKDIR_EXCL)) < 0)
		goto out;
	if ((err = FUNC15(&wddir, worktree, NULL)) < 0)
		goto out;

	if (wtopts.lock) {
		int fd;

		if ((err = FUNC6(&buf, gitdir.ptr, "locked")) < 0)
			goto out;

		if ((fd = FUNC27(buf.ptr, 0644)) < 0) {
			err = fd;
			goto out;
		}

		FUNC26(fd);
		FUNC4(&buf);
	}

	/* Create worktree .git file */
	if ((err = FUNC7(&buf, "gitdir: %s\n", gitdir.ptr)) < 0)
		goto out;
	if ((err = FUNC28(wddir.ptr, ".git", &buf)) < 0)
		goto out;

	/* Create gitdir files */
	if ((err = FUNC15(&buf, repo->commondir, NULL) < 0)
	    || (err = FUNC8(&buf, '\n')) < 0
	    || (err = FUNC28(gitdir.ptr, "commondir", &buf)) < 0)
		goto out;
	if ((err = FUNC6(&buf, wddir.ptr, ".git")) < 0
	    || (err = FUNC8(&buf, '\n')) < 0
	    || (err = FUNC28(gitdir.ptr, "gitdir", &buf)) < 0)
		goto out;

	/* Set up worktree reference */
	if (wtopts.ref) {
		if ((err = FUNC16(&ref, wtopts.ref)) < 0)
			goto out;
	} else {
		if ((err = FUNC22(&head, repo)) < 0)
			goto out;
		if ((err = FUNC11(&commit, repo, &head->target.oid)) < 0)
			goto out;
		if ((err = FUNC2(&ref, repo, name, commit, false)) < 0)
			goto out;
	}

	/* Set worktree's HEAD */
	if ((err = FUNC20(gitdir.ptr, FUNC19(ref))) < 0)
		goto out;
	if ((err = FUNC23(&wt, wddir.ptr)) < 0)
		goto out;

	/* Checkout worktree's HEAD */
	coopts.checkout_strategy = GIT_CHECKOUT_FORCE;
	if ((err = FUNC9(wt, &coopts)) < 0)
		goto out;

	/* Load result */
	if ((err = FUNC24(out, repo, name)) < 0)
		goto out;

out:
	FUNC5(&gitdir);
	FUNC5(&wddir);
	FUNC5(&buf);
	FUNC17(ref);
	FUNC17(head);
	FUNC10(commit);
	FUNC21(wt);

	return err;
}