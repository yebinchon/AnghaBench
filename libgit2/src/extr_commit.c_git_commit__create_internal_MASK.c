#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_commit_parent_callback ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_array_oid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ARRAY_INIT ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC12(
	git_oid *id,
	git_repository *repo,
	const char *update_ref,
	const git_signature *author,
	const git_signature *committer,
	const char *message_encoding,
	const char *message,
	const git_oid *tree,
	git_commit_parent_callback parent_cb,
	void *parent_payload,
	bool validate)
{
	int error;
	git_odb *odb;
	git_reference *ref = NULL;
	git_buf buf = GIT_BUF_INIT;
	const git_oid *current_id = NULL;
	git_array_oid_t parents = GIT_ARRAY_INIT;

	if (update_ref) {
		error = FUNC8(&ref, repo, update_ref, 10);
		if (error < 0 && error != GIT_ENOTFOUND)
			return error;
	}
	FUNC3();

	if (ref)
		current_id = FUNC9(ref);

	if ((error = FUNC11(&parents, repo, tree, parent_cb, parent_payload, current_id, validate)) < 0)
		goto cleanup;

	error = FUNC2(&buf, author, committer,
		message_encoding, message, tree,
		&parents);

	if (error < 0)
		goto cleanup;

	if (FUNC10(&odb, repo) < 0)
		goto cleanup;

	if (FUNC4(odb, tree) < 0)
		goto cleanup;

	if (FUNC5(id, odb, buf.ptr, buf.size, GIT_OBJECT_COMMIT) < 0)
		goto cleanup;


	if (update_ref != NULL) {
		error = FUNC6(
			repo, ref, update_ref, id, "commit");
		goto cleanup;
	}

cleanup:
	FUNC0(parents);
	FUNC7(ref);
	FUNC1(&buf);
	return error;
}