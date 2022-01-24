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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_STASH_INCLUDE_IGNORED ; 
 int GIT_STASH_INCLUDE_UNTRACKED ; 
 int GIT_STASH_KEEP_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC16(
	git_oid *out,
	git_repository *repo,
	const git_signature *stasher,
	const char *message,
	uint32_t flags)
{
	git_index *index = NULL;
	git_commit *b_commit = NULL, *i_commit = NULL, *u_commit = NULL;
	git_buf msg = GIT_BUF_INIT;
	int error;

	FUNC0(out && repo && stasher);

	if ((error = FUNC10(repo, "stash save")) < 0)
		return error;

	if ((error = FUNC14(&b_commit, &msg, repo)) < 0)
		goto cleanup;

	if ((error = FUNC4(repo, flags)) < 0)
		goto cleanup;

	if ((error = FUNC11(&index, repo)) < 0)
		goto cleanup;

	if ((error = FUNC1(&i_commit, repo, index, stasher,
				  FUNC5(&msg), b_commit)) < 0)
		goto cleanup;

	if ((flags & (GIT_STASH_INCLUDE_UNTRACKED | GIT_STASH_INCLUDE_IGNORED)) &&
	    (error = FUNC2(&u_commit, repo, stasher,
				      FUNC5(&msg), i_commit, flags)) < 0)
		goto cleanup;

	if ((error = FUNC12(&msg, message)) < 0)
		goto cleanup;

	if ((error = FUNC3(out, repo, stasher, FUNC5(&msg),
				     i_commit, b_commit, u_commit)) < 0)
		goto cleanup;

	FUNC7(&msg);

	if ((error = FUNC15(out, repo, FUNC5(&msg))) < 0)
		goto cleanup;

	if ((error = FUNC13(repo, (flags & GIT_STASH_KEEP_INDEX) ? i_commit : b_commit,
					     flags)) < 0)
		goto cleanup;

cleanup:

	FUNC6(&msg);
	FUNC8(i_commit);
	FUNC8(b_commit);
	FUNC8(u_commit);
	FUNC9(index);

	return error;
}