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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_note ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,char**,int /*<<< orphan*/ *,char const*) ; 

int FUNC4(git_note **out, git_repository *repo,
		  const char *notes_ref_in, const git_oid *oid)
{
	int error;
	char *notes_ref = NULL;
	git_commit *commit = NULL;

	error = FUNC3(&commit, &notes_ref, repo, notes_ref_in);

	if (error < 0)
		goto cleanup;

	error = FUNC2(out, repo, commit, oid);

cleanup:
	FUNC0(notes_ref);
	FUNC1(commit);
	return error;
}