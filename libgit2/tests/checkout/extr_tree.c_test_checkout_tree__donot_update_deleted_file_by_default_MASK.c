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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_6__ {TYPE_2__* notify_payload; int /*<<< orphan*/  notify_cb; int /*<<< orphan*/  notify_flags; int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  ct ;
struct TYPE_7__ {int /*<<< orphan*/  n_updates; int /*<<< orphan*/  n_conflicts; } ;
typedef  TYPE_2__ checkout_counts ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_ALL ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  checkout_count_callback ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void FUNC16(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid old_id, new_id;
	git_commit *old_commit = NULL, *new_commit = NULL;
	git_index *index = NULL;
	checkout_counts ct;

	opts.checkout_strategy = GIT_CHECKOUT_SAFE;

	FUNC14(&ct, 0, sizeof(ct));
	opts.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
	opts.notify_cb = checkout_count_callback;
	opts.notify_payload = &ct;

	FUNC3(FUNC12(&index, g_repo));

	FUNC3(FUNC10(&old_id, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
	FUNC3(FUNC6(&old_commit, g_repo, &old_id));
	FUNC3(FUNC13(g_repo, (git_object *)old_commit, GIT_RESET_HARD, NULL));

	FUNC3(FUNC15("testrepo/branch_file.txt"));
	FUNC3(FUNC8(index ,"branch_file.txt"));
	FUNC3(FUNC9(index));

	FUNC0(!FUNC11("testrepo/branch_file.txt"));

	FUNC3(FUNC10(&new_id, "099fabac3a9ea935598528c27f866e34089c2eff"));
	FUNC3(FUNC6(&new_commit, g_repo, &new_id));


	FUNC2(FUNC4(g_repo, (git_object *)new_commit, &opts));

	FUNC1(1, ct.n_conflicts);
	FUNC1(1, ct.n_updates);

	FUNC5(old_commit);
	FUNC5(new_commit);
	FUNC7(index);
}