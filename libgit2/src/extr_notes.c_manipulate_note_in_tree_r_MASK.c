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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
	git_tree **out,
	git_repository *repo,
	git_tree *parent,
	git_oid *note_oid,
	const char *annotated_object_sha,
	int fanout,
	int (*note_exists_cb)(
		git_tree **out,
		git_repository *repo,
		git_tree *parent,
		git_oid *note_oid,
		const char *annotated_object_sha,
		int fanout,
		int current_error),
	int (*note_notfound_cb)(
		git_tree **out,
		git_repository *repo,
		git_tree *parent,
		git_oid *note_oid,
		const char *annotated_object_sha,
		int fanout,
		int current_error))
{
	int error;
	git_tree *subtree = NULL, *new = NULL;
	char subtree_name[3];

	error = FUNC0(
		&subtree, repo, parent, annotated_object_sha, fanout);

	if (error == GIT_EEXISTS) {
		error = note_exists_cb(
			out, repo, parent, note_oid, annotated_object_sha, fanout, error);
		goto cleanup;
	}

	if (error == GIT_ENOTFOUND) {
		error = note_notfound_cb(
			out, repo, parent, note_oid, annotated_object_sha, fanout, error);
		goto cleanup;
	}

	if (error < 0)
		goto cleanup;

	/* An existing fanout has been found, let's dig deeper */
	error = FUNC5(
		&new, repo, subtree, note_oid, annotated_object_sha,
		fanout + 2, note_exists_cb, note_notfound_cb);

	if (error < 0)
		goto cleanup;

	FUNC3(subtree_name, annotated_object_sha + fanout, 2);
	subtree_name[2] = '\0';

	error = FUNC4(out, repo, parent, FUNC2(new),
			   subtree_name, GIT_FILEMODE_TREE);


cleanup:
	FUNC1(new);
	FUNC1(subtree);
	return error;
}