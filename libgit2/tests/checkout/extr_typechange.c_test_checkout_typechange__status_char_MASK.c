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
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_TYPECHANGE ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

void FUNC11(void)
{
	size_t i;
	git_oid oid;
	git_commit *commit;
	git_diff *diff;
	const git_diff_delta *delta;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	char expected[8] = {'M', 'M', 'R', 'T', 'D', 'R', 'A', 'R'};

	FUNC10(&oid, "9b19edf33a03a0c59cdfc113bfa5c06179bf9b1a");
	FUNC1(FUNC3(&commit, g_repo, &oid));
	diffopts.flags |= GIT_DIFF_INCLUDE_TYPECHANGE;
	FUNC1(FUNC4(&diff, g_repo, commit, &diffopts));
	FUNC1(FUNC5(diff, NULL));

	for (i = 0; i < FUNC8(diff); i++) {
		delta = FUNC7(diff, i);
		FUNC0(expected[i], FUNC9(delta->status));
	}

	FUNC6(diff);
	FUNC2(commit);
}