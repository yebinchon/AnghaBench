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
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t) ; 

__attribute__((used)) static int FUNC4(
	git_annotated_commit **ancestor_head_out,
	git_annotated_commit **our_head_out,
	git_repository *repo,
	git_reference *our_ref,
	const git_annotated_commit **their_heads,
	size_t their_heads_len)
{
	git_annotated_commit *ancestor_head = NULL, *our_head = NULL;
	int error = 0;

	*ancestor_head_out = NULL;
	*our_head_out = NULL;

	if ((error = FUNC1(&our_head, repo, our_ref)) < 0)
		goto done;

	if ((error = FUNC3(&ancestor_head, repo, our_head, their_heads, their_heads_len)) < 0) {
		if (error != GIT_ENOTFOUND)
			goto done;

		FUNC2();
		error = 0;
	}

	*ancestor_head_out = ancestor_head;
	*our_head_out = our_head;

done:
	if (error < 0) {
		FUNC0(ancestor_head);
		FUNC0(our_head);
	}

	return error;
}