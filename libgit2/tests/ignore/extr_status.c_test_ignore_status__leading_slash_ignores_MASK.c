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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
#define  GIT_STATUS_IGNORED 129 
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_DEFAULTS ; 
 int GIT_STATUS_OPT_RECURSE_IGNORED_DIRS ; 
#define  GIT_STATUS_WT_NEW 128 
 int /*<<< orphan*/  cb_status__normal ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  test_files_1 ; 
 int /*<<< orphan*/  test_repo_1 ; 

void FUNC11(void)
{
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	status_entry_counts counts;
	static const char *paths_2[] = {
		"dir/.gitignore",
		"dir/a/ignore_me",
		"dir/b/ignore_me",
		"dir/ignore_me",
		"ignore_also/file",
		"ignore_me",
		"test/.gitignore",
		"test/ignore_me/and_me/file",
		"test/ignore_me/file",
		"test/ignore_me/file2",
	};
	static const unsigned int statuses_2[] = {
		GIT_STATUS_WT_NEW,  GIT_STATUS_WT_NEW,  GIT_STATUS_WT_NEW,
		GIT_STATUS_IGNORED, GIT_STATUS_IGNORED, GIT_STATUS_IGNORED,
		GIT_STATUS_WT_NEW, GIT_STATUS_WT_NEW, GIT_STATUS_WT_NEW, GIT_STATUS_WT_NEW,
	};

	FUNC9(test_repo_1, test_files_1);

	FUNC1();
	FUNC2("home/.gitignore", "/ignore_me\n");
	{
		git_config *cfg;
		FUNC3(FUNC7(&cfg, g_repo));
		FUNC3(FUNC6(
			cfg, "core.excludesfile", "~/.gitignore"));
		FUNC5(cfg);
	}

	FUNC4("empty_standard_repo/.git/info/exclude", "/ignore_also\n");
	FUNC4("empty_standard_repo/dir/.gitignore", "/ignore_me\n");
	FUNC4("empty_standard_repo/test/.gitignore", "/and_me\n");

	FUNC10(&counts, 0x0, sizeof(status_entry_counts));
	counts.expected_entry_count = 10;
	counts.expected_paths = paths_2;
	counts.expected_statuses = statuses_2;

	opts.flags = GIT_STATUS_OPT_DEFAULTS | GIT_STATUS_OPT_RECURSE_IGNORED_DIRS;

	FUNC3(FUNC8(
		g_repo, &opts, cb_status__normal, &counts));

	FUNC0(counts.expected_entry_count, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);
}