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
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_6__ {int /*<<< orphan*/  klass; } ;
typedef  TYPE_1__ git_error ;
struct TYPE_7__ {int version; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*) ; 

void FUNC8(void)
{
	const char *a_commit = "26a125ee1bf";
	git_tree *a = FUNC7(g_repo, a_commit);
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	const git_error *err;

	opts.version = 0;
	FUNC2(FUNC3(&diff, g_repo, a, NULL, &opts));
	err = FUNC5();
	FUNC0(GIT_ERROR_INVALID, err->klass);
	FUNC1(diff, NULL);

	FUNC4();
	opts.version = 1024;
	FUNC2(FUNC3(&diff, g_repo, a, NULL, &opts));
	err = FUNC5();
	FUNC0(GIT_ERROR_INVALID, err->klass);
	FUNC1(diff, NULL);

	FUNC6(a);
}