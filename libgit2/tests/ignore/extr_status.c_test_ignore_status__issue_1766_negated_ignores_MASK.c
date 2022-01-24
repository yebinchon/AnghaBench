#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int expected_entry_count; char const** expected_paths; unsigned int const* expected_statuses; int entry_count; int wrong_status_flags_count; int wrong_sorted_path; } ;
typedef  TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_status_options ;

/* Variables and functions */
#define  GIT_STATUS_IGNORED 129 
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_DEFAULTS ; 
#define  GIT_STATUS_WT_NEW 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  cb_status__normal ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(void)
{
	unsigned int status;

	g_repo = FUNC4("empty_standard_repo");

	FUNC3(FUNC5(
		"empty_standard_repo/a", 0775));
	FUNC2(
		"empty_standard_repo/a/.gitignore", "*\n!.gitignore\n");
	FUNC2(
		"empty_standard_repo/a/ignoreme", "I should be ignored\n");

	FUNC9("a/.gitignore");
	FUNC0("a/ignoreme");

	FUNC3(FUNC5(
		"empty_standard_repo/b", 0775));
	FUNC2(
		"empty_standard_repo/b/.gitignore", "*\n!.gitignore\n");
	FUNC2(
		"empty_standard_repo/b/ignoreme", "I should be ignored\n");

	FUNC9("b/.gitignore");
	FUNC0("b/ignoreme");

	/* shouldn't have changed results from first couple either */
	FUNC9("a/.gitignore");
	FUNC0("a/ignoreme");

	/* status should find the two ignore files and nothing else */

	FUNC3(FUNC6(&status, g_repo, "a/.gitignore"));
	FUNC1(GIT_STATUS_WT_NEW, (int)status);

	FUNC3(FUNC6(&status, g_repo, "a/ignoreme"));
	FUNC1(GIT_STATUS_IGNORED, (int)status);

	FUNC3(FUNC6(&status, g_repo, "b/.gitignore"));
	FUNC1(GIT_STATUS_WT_NEW, (int)status);

	FUNC3(FUNC6(&status, g_repo, "b/ignoreme"));
	FUNC1(GIT_STATUS_IGNORED, (int)status);

	{
		git_status_options opts = GIT_STATUS_OPTIONS_INIT;
		status_entry_counts counts;
		static const char *paths[] = {
			"a/.gitignore",
			"a/ignoreme",
			"b/.gitignore",
			"b/ignoreme",
		};
		static const unsigned int statuses[] = {
			GIT_STATUS_WT_NEW,
			GIT_STATUS_IGNORED,
			GIT_STATUS_WT_NEW,
			GIT_STATUS_IGNORED,
		};

		FUNC8(&counts, 0x0, sizeof(status_entry_counts));
		counts.expected_entry_count = 4;
		counts.expected_paths = paths;
		counts.expected_statuses = statuses;

		opts.flags = GIT_STATUS_OPT_DEFAULTS;

		FUNC3(FUNC7(
			g_repo, &opts, cb_status__normal, &counts));

		FUNC1(counts.expected_entry_count, counts.entry_count);
		FUNC1(0, counts.wrong_status_flags_count);
		FUNC1(0, counts.wrong_sorted_path);
	}
}