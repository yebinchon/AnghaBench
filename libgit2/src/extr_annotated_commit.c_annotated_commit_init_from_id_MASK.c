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
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(
	git_annotated_commit **out,
	git_repository *repo,
	const git_oid *id,
	const char *description)
{
	git_commit *commit = NULL;
	int error = 0;

	FUNC1(out && repo && id);

	*out = NULL;

	if ((error = FUNC3(&commit, repo, id)) < 0)
		goto done;

	error = FUNC0(out, commit, description);

done:
	FUNC2(commit);
	return error;
}