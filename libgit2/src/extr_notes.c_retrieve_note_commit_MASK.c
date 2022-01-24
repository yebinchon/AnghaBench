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
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC3(
	git_commit **commit_out,
	char **notes_ref_out,
	git_repository *repo,
	const char *notes_ref)
{
	int error;
	git_oid oid;

	if ((error = FUNC2(notes_ref_out, repo, notes_ref)) < 0)
		return error;

	if ((error = FUNC1(&oid, repo, *notes_ref_out)) < 0)
		return error;

	if (FUNC0(commit_out, repo, &oid) < 0)
		return error;

	return 0;
}