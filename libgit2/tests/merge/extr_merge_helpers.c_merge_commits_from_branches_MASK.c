#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_merge_options ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(
	git_index **index, git_repository *repo,
	const char *ours_name, const char *theirs_name,
	git_merge_options *opts)
{
	git_commit *our_commit, *their_commit;
	git_oid our_oid, their_oid;
	git_buf branch_buf = GIT_BUF_INIT;
	int error;

	FUNC3(&branch_buf, "%s%s", GIT_REFS_HEADS_DIR, ours_name);
	FUNC0(FUNC7(&our_oid, repo, branch_buf.ptr));
	FUNC0(FUNC5(&our_commit, repo, &our_oid));

	FUNC1(&branch_buf);
	FUNC3(&branch_buf, "%s%s", GIT_REFS_HEADS_DIR, theirs_name);
	FUNC0(FUNC7(&their_oid, repo, branch_buf.ptr));
	FUNC0(FUNC5(&their_commit, repo, &their_oid));

	error = FUNC6(index, repo, our_commit, their_commit, opts);

	FUNC2(&branch_buf);
	FUNC4(our_commit);
	FUNC4(their_commit);

	return error;
}