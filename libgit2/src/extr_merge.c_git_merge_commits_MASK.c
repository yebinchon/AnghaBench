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
typedef  int /*<<< orphan*/  git_merge_options ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

int FUNC3(
	git_index **out,
	git_repository *repo,
	const git_commit *our_commit,
	const git_commit *their_commit,
	const git_merge_options *opts)
{
	git_annotated_commit *ours = NULL, *theirs = NULL, *base = NULL;
	int error = 0;

	if ((error = FUNC1(&ours, (git_commit *)our_commit)) < 0 ||
		(error = FUNC1(&theirs, (git_commit *)their_commit)) < 0)
		goto done;

	error = FUNC2(out, &base, repo, ours, theirs, 0, opts);

done:
	FUNC0(ours);
	FUNC0(theirs);
	FUNC0(base);
	return error;
}