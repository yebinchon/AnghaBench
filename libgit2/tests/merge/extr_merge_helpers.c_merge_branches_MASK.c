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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_merge_options ;
struct TYPE_6__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*,int,int /*<<< orphan*/ *) ; 

int FUNC8(git_repository *repo,
	const char *ours_branch, const char *theirs_branch,
	git_merge_options *merge_opts, git_checkout_options *checkout_opts)
{
	git_reference *head_ref, *theirs_ref;
	git_annotated_commit *theirs_head;
	git_checkout_options head_checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

	head_checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC0(FUNC7(&head_ref, repo, "HEAD", ours_branch, 1, NULL));
	FUNC0(FUNC3(repo, &head_checkout_opts));

	FUNC0(FUNC6(&theirs_ref, repo, theirs_branch));
	FUNC0(FUNC2(&theirs_head, repo, theirs_ref));

	FUNC0(FUNC4(repo, (const git_annotated_commit **)&theirs_head, 1, merge_opts, checkout_opts));

	FUNC5(head_ref);
	FUNC5(theirs_ref);
	FUNC1(theirs_head);

	return 0;
}