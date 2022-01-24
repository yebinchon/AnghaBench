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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,char**,int /*<<< orphan*/ *,char const*) ; 

int FUNC6(git_repository *repo, const char *notes_ref_in,
		const git_signature *author, const git_signature *committer,
		const git_oid *oid)
{
	int error;
	char *notes_ref_target = NULL;
	git_commit *existing_notes_commit = NULL;
	git_oid new_notes_commit;
	git_reference *notes_ref = NULL;

	error = FUNC5(&existing_notes_commit, &notes_ref_target,
			repo, notes_ref_in);

	if (error < 0)
		goto cleanup;

	error = FUNC2(&new_notes_commit, repo,
			existing_notes_commit, author, committer, oid);
	if (error < 0)
		goto cleanup;

	error = FUNC3(&notes_ref, repo, notes_ref_target,
			&new_notes_commit, 1, NULL);

cleanup:
	FUNC0(notes_ref_target);
	FUNC4(notes_ref);
	FUNC1(existing_notes_commit);
	return error;
}