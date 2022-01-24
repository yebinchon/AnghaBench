#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_remote_head ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_EINVALIDSPEC ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_MASTER_FILE ; 
 int /*<<< orphan*/  GIT_REMOTE_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__ const***,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC12(
		git_repository *repo,
		git_remote *remote,
		const char *reflog_message)
{
	int error = 0;
	size_t refs_len;
	git_refspec *refspec;
	const git_remote_head *remote_head, **refs;
	const git_oid *remote_head_id;
	git_buf remote_master_name = GIT_BUF_INIT;
	git_buf branch = GIT_BUF_INIT;

	if ((error = FUNC7(&refs, &refs_len, remote)) < 0)
		return error;

	/* We cloned an empty repository or one with an unborn HEAD */
	if (refs_len == 0 || FUNC10(refs[0]->name, GIT_HEAD_FILE))
		return FUNC9(
			repo, "master", GIT_REMOTE_ORIGIN, GIT_REFS_HEADS_MASTER_FILE);

	/* We know we have HEAD, let's see where it points */
	remote_head = refs[0];
	FUNC0(remote_head);

	remote_head_id = &remote_head->oid;

	error = FUNC6(&branch, remote);
	if (error == GIT_ENOTFOUND) {
		error = FUNC8(
			repo, remote_head_id);
		goto cleanup;
	}

	refspec = FUNC5(remote, FUNC1(&branch));

	if (refspec == NULL) {
		FUNC3(GIT_ERROR_NET, "the remote's default branch does not fit the refspec configuration");
		error = GIT_EINVALIDSPEC;
		goto cleanup;
	}

	/* Determine the remote tracking reference name from the local master */
	if ((error = FUNC4(
		&remote_master_name,
		refspec,
		FUNC1(&branch))) < 0)
		goto cleanup;

	error = FUNC11(
		repo,
		remote_head_id,
		FUNC1(&branch),
		reflog_message);

cleanup:
	FUNC2(&remote_master_name);
	FUNC2(&branch);

	return error;
}