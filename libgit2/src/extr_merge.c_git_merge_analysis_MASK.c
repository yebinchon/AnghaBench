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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_merge_preference_t ;
typedef  int /*<<< orphan*/  git_merge_analysis_t ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_MERGE ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(
	git_merge_analysis_t *analysis_out,
	git_merge_preference_t *preference_out,
	git_repository *repo,
	const git_annotated_commit **their_heads,
	size_t their_heads_len)
{
	git_reference *head_ref = NULL;
	int error = 0;

	if ((error = FUNC3(&head_ref, repo, GIT_HEAD_FILE)) < 0) {
		FUNC0(GIT_ERROR_MERGE, "failed to lookup HEAD reference");
		return error;
	}

	error = FUNC1(analysis_out, preference_out, repo, head_ref, their_heads, their_heads_len);

	FUNC2(head_ref);

	return error;
}