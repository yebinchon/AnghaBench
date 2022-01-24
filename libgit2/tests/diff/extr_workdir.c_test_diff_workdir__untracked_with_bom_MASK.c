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
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ git_diff_options ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	const git_diff_delta *delta;

	g_repo = FUNC3("empty_standard_repo");
	FUNC5(g_repo, "core.autocrlf", true);

	FUNC4("empty_standard_repo/bom.txt",
		"\xFF\xFE\x31\x00\x32\x00\x33\x00\x34\x00", 10, O_WRONLY|O_CREAT, 0664);

	opts.flags =
		GIT_DIFF_INCLUDE_UNTRACKED | GIT_DIFF_SHOW_UNTRACKED_CONTENT;

	FUNC2(FUNC8(&diff, g_repo, NULL, &opts));

	FUNC1(1, FUNC9(diff));
	FUNC0((delta = FUNC7(diff, 0)) != NULL);
	FUNC1(GIT_DELTA_UNTRACKED, delta->status);

	/* not known at this point
	 * cl_assert((delta->flags & GIT_DIFF_FLAG_BINARY) != 0);
	 */

	FUNC6(diff);
}