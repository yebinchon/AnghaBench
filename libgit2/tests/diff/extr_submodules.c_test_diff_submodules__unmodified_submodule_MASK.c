#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; char* old_prefix; char* new_prefix; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNMODIFIED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	static const char *expected[] = {
		"<SKIP>", /* .gitmodules */
		NULL, /* added */
		NULL, /* ignored */
		"diff --git a/modified b/modified\nindex 092bfb9..452216e 100644\n--- a/modified\n+++ b/modified\n@@ -1 +1,2 @@\n-yo\n+changed\n+\n", /* modified */
		NULL, /* testrepo.git */
		NULL, /* unmodified */
		NULL, /* untracked */
		"<END>"
	};

	g_repo = FUNC4();

	opts.flags = GIT_DIFF_INCLUDE_IGNORED |
		GIT_DIFF_INCLUDE_UNTRACKED |
		GIT_DIFF_INCLUDE_UNMODIFIED;
	opts.old_prefix = "a"; opts.new_prefix = "b";

	FUNC1(FUNC3(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected);
	FUNC2(diff);
}