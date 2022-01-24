#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_6__ {int /*<<< orphan*/  checkout_options; } ;
struct TYPE_7__ {TYPE_1__ options; int /*<<< orphan*/  repo; int /*<<< orphan*/  orig_head_id; int /*<<< orphan*/  orig_head_name; scalar_t__ head_detached; scalar_t__ inmemory; } ;
typedef  TYPE_2__ git_rebase ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*) ; 

int FUNC8(git_rebase *rebase)
{
	git_reference *orig_head_ref = NULL;
	git_commit *orig_head_commit = NULL;
	int error;

	FUNC0(rebase);

	if (rebase->inmemory)
		return 0;

	error = rebase->head_detached ?
		FUNC3(&orig_head_ref, rebase->repo, GIT_HEAD_FILE,
			 &rebase->orig_head_id, 1, "rebase: aborting") :
		FUNC5(
			&orig_head_ref, rebase->repo, GIT_HEAD_FILE, rebase->orig_head_name, 1,
			"rebase: aborting");

	if (error < 0)
		goto done;

	if ((error = FUNC2(
			&orig_head_commit, rebase->repo, &rebase->orig_head_id)) < 0 ||
		(error = FUNC6(rebase->repo, (git_object *)orig_head_commit,
			GIT_RESET_HARD, &rebase->options.checkout_options)) < 0)
		goto done;

	error = FUNC7(rebase);

done:
	FUNC1(orig_head_commit);
	FUNC4(orig_head_ref);

	return error;
}