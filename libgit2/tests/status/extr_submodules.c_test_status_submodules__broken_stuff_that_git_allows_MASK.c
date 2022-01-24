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
struct TYPE_7__ {int /*<<< orphan*/  entry_count; } ;
typedef  TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ git_status_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
#define  GIT_STATUS_IGNORED 132 
#define  GIT_STATUS_INDEX_DELETED 131 
#define  GIT_STATUS_INDEX_NEW 130 
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_INCLUDE_IGNORED ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ; 
#define  GIT_STATUS_WT_MODIFIED 129 
#define  GIT_STATUS_WT_NEW 128 
 int /*<<< orphan*/  cb_status__match ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__,char const**,unsigned int*) ; 

void FUNC16(void)
{
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	status_entry_counts counts;
	git_repository *contained;
	static const char *expected_files_with_broken[] = {
		".gitmodules",
		"added",
		"broken/tracked",
		"deleted",
		"ignored",
		"modified",
		"untracked"
	};
	static unsigned int expected_status_with_broken[] = {
		GIT_STATUS_WT_MODIFIED,
		GIT_STATUS_INDEX_NEW,
		GIT_STATUS_INDEX_NEW,
		GIT_STATUS_INDEX_DELETED,
		GIT_STATUS_IGNORED,
		GIT_STATUS_WT_MODIFIED,
		GIT_STATUS_WT_NEW,
	};

	g_repo = FUNC14();

	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS |
		GIT_STATUS_OPT_INCLUDE_IGNORED;

	/* make a directory and stick a tracked item into the index */
	{
		git_index *idx;
		FUNC4(FUNC13("submodules/broken", 0777));
		FUNC2("submodules/broken/tracked", "tracked content");
		FUNC3(FUNC10(&idx, g_repo));
		FUNC3(FUNC6(idx, "broken/tracked"));
		FUNC3(FUNC8(idx));
		FUNC7(idx);
	}

	FUNC15(
		counts, expected_files_with_broken, expected_status_with_broken);
	FUNC3(FUNC12(
		g_repo, &opts, cb_status__match, &counts));
	FUNC0(7, counts.entry_count);

	/* directory with tracked items that looks a little bit like a repo */

	FUNC4(FUNC13("submodules/broken/.git", 0777));
	FUNC4(FUNC13("submodules/broken/.git/info", 0777));
	FUNC2("submodules/broken/.git/info/exclude", "# bogus");

	FUNC15(
		counts, expected_files_with_broken, expected_status_with_broken);
	FUNC3(FUNC12(
		g_repo, &opts, cb_status__match, &counts));
	FUNC0(7, counts.entry_count);

	/* directory with tracked items that is a repo */

	FUNC3(FUNC5(
		"submodules/broken/.git", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC3(FUNC11(&contained, "submodules/broken", false));
	FUNC9(contained);

	FUNC15(
		counts, expected_files_with_broken, expected_status_with_broken);
	FUNC3(FUNC12(
		g_repo, &opts, cb_status__match, &counts));
	FUNC0(7, counts.entry_count);

	/* directory with tracked items that claims to be a submodule but is not */

	FUNC3(FUNC5(
		"submodules/broken/.git", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC1("submodules/.gitmodules",
		"\n[submodule \"broken\"]\n"
		"\tpath = broken\n"
		"\turl = https://github.com/not/used\n\n");

	FUNC15(
		counts, expected_files_with_broken, expected_status_with_broken);
	FUNC3(FUNC12(
		g_repo, &opts, cb_status__match, &counts));
	FUNC0(7, counts.entry_count);
}