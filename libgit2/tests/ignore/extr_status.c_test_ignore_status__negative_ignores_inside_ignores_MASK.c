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
struct TYPE_7__ {int expected_entry_count; char const** expected_paths; unsigned int const* expected_statuses; int /*<<< orphan*/  wrong_sorted_path; int /*<<< orphan*/  wrong_status_flags_count; int /*<<< orphan*/  entry_count; } ;
typedef  TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ git_status_options ;

/* Variables and functions */
#define  GIT_STATUS_IGNORED 130 
#define  GIT_STATUS_INDEX_NEW 129 
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_DEFAULTS ; 
 int GIT_STATUS_OPT_INCLUDE_IGNORED ; 
 int GIT_STATUS_OPT_RECURSE_IGNORED_DIRS ; 
#define  GIT_STATUS_WT_NEW 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cb_status__normal ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(void)
{
	static const char *test_files[] = {
		"empty_standard_repo/top/mid/btm/tracked",
		"empty_standard_repo/top/mid/btm/untracked",
		"empty_standard_repo/zoo/bar",
		"empty_standard_repo/zoo/foo/bar",
		NULL
	};

	FUNC6("empty_standard_repo", test_files);
	FUNC3(
		"empty_standard_repo/.gitignore",
		"top\n"
		"!top/mid/btm\n"
		"zoo/*\n"
		"!zoo/bar\n"
		"!zoo/foo/bar\n");
	FUNC0("top/mid/btm/tracked");

	{
		git_status_options opts = GIT_STATUS_OPTIONS_INIT;
		status_entry_counts counts;
		static const char *files[] = {
			".gitignore", "top/mid/btm/tracked", "top/mid/btm/untracked",
			"zoo/bar", "zoo/foo/bar",
		};
		static const unsigned int statuses[] = {
			GIT_STATUS_WT_NEW, GIT_STATUS_INDEX_NEW, GIT_STATUS_IGNORED,
			GIT_STATUS_WT_NEW, GIT_STATUS_IGNORED,
		};

		FUNC7(&counts, 0x0, sizeof(status_entry_counts));
		counts.expected_entry_count = 5;
		counts.expected_paths = files;
		counts.expected_statuses = statuses;
		opts.flags = GIT_STATUS_OPT_DEFAULTS |
			GIT_STATUS_OPT_INCLUDE_IGNORED |
			GIT_STATUS_OPT_RECURSE_IGNORED_DIRS;
		FUNC4(FUNC5(
			g_repo, &opts, cb_status__normal, &counts));

		FUNC2(counts.expected_entry_count, counts.entry_count);
		FUNC2(0, counts.wrong_status_flags_count);
		FUNC2(0, counts.wrong_sorted_path);
	}

	FUNC1("top/mid/btm/tracked");
	FUNC1("top/mid/btm/untracked");
	FUNC8("foo/bar");
}