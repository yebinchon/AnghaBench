#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  perf_timer ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_merge_options ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_9__ {int /*<<< orphan*/  checkout_strategy; } ;
struct TYPE_8__ {TYPE_2__ checkout_opts; } ;
typedef  TYPE_1__ git_clone_options ;
typedef  TYPE_2__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 TYPE_1__ GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_MERGE_OPTIONS_INIT ; 
 int /*<<< orphan*/  PERF_TIMER_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(const char *fixture,
					const char *test_name,
					const char *id_a,
					const char *id_b)
{
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_clone_options clone_opts = GIT_CLONE_OPTIONS_INIT;
	git_merge_options merge_opts = GIT_MERGE_OPTIONS_INIT;
	git_oid oid_a;
	git_oid oid_b;
	git_reference *ref_branch_a = NULL;
	git_reference *ref_branch_b = NULL;
	git_commit *commit_a = NULL;
	git_commit *commit_b = NULL;
	git_annotated_commit *annotated_commits[1] = { NULL };
	perf_timer t_total = PERF_TIMER_INIT;
	perf_timer t_clone = PERF_TIMER_INIT;
	perf_timer t_checkout = PERF_TIMER_INIT;
	perf_timer t_merge = PERF_TIMER_INIT;

	FUNC15(&t_total);

	checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
	clone_opts.checkout_opts = checkout_opts;

	FUNC15(&t_clone);
	FUNC0(FUNC5(&g_repo, fixture, test_name, &clone_opts));
	FUNC16(&t_clone);
	
	FUNC9(&oid_a, id_a);
	FUNC0(FUNC7(&commit_a, g_repo, &oid_a));
	FUNC0(FUNC3(&ref_branch_a, g_repo,
								  "A", commit_a,
								  0));

	FUNC15(&t_checkout);
	FUNC0(FUNC4(g_repo, (git_object*)commit_a, &checkout_opts));
	FUNC16(&t_checkout);

	FUNC0(FUNC13(g_repo, FUNC11(ref_branch_a)));

	FUNC9(&oid_b, id_b);
	FUNC0(FUNC7(&commit_b, g_repo, &oid_b));
	FUNC0(FUNC3(&ref_branch_b, g_repo,
								  "B", commit_b,
								  0));

	FUNC0(FUNC2(&annotated_commits[0], g_repo, &oid_b));

	FUNC15(&t_merge);
	FUNC0(FUNC8(g_repo,
						  (const git_annotated_commit **)annotated_commits, 1,
						  &merge_opts, &checkout_opts));
	FUNC16(&t_merge);

	FUNC10(ref_branch_a);
	FUNC10(ref_branch_b);
	FUNC6(commit_a);
	FUNC6(commit_b);
	FUNC1(annotated_commits[0]);
	FUNC12(g_repo);

	FUNC16(&t_total);

	FUNC14(&t_clone, "%s: clone", test_name);
	FUNC14(&t_checkout, "%s: checkout", test_name);
	FUNC14(&t_merge, "%s: merge", test_name);
	FUNC14(&t_total, "%s: total", test_name);
}