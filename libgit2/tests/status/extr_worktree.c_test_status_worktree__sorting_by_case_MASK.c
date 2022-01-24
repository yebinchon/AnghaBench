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
struct TYPE_7__ {int expected_entry_count; int /*<<< orphan*/  wrong_sorted_path; int /*<<< orphan*/  wrong_status_flags_count; int /*<<< orphan*/  entry_count; int /*<<< orphan*/ * expected_statuses; int /*<<< orphan*/ * expected_paths; } ;
typedef  TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_status_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  counts ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_SORT_CASE_SENSITIVELY ; 
 void* case_paths ; 
 void* case_statuses ; 
 int /*<<< orphan*/  cb_status__normal ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* icase_paths ; 
 void* icase_statuses ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(void)
{
	git_repository *repo = FUNC3("icase");
	git_index *index;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	bool native_ignore_case;
	status_entry_counts counts;

	FUNC1(FUNC7(&index, repo));
	native_ignore_case =
		(FUNC5(index) & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0;
	FUNC6(index);

	FUNC9(&counts, 0, sizeof(counts));
	counts.expected_entry_count = 0;
	counts.expected_paths = NULL;
	counts.expected_statuses = NULL;
	FUNC1(
		FUNC8(repo, &opts, cb_status__normal, &counts));
	FUNC0(counts.expected_entry_count, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);

	FUNC2("icase/B", "new stuff");
	FUNC4(FUNC10("icase/c"));
	FUNC2("icase/g", "new stuff");
	FUNC4(FUNC10("icase/H"));

	FUNC9(&counts, 0, sizeof(counts));
	counts.expected_entry_count = 4;
	if (native_ignore_case) {
		counts.expected_paths = icase_paths;
		counts.expected_statuses = icase_statuses;
	} else {
		counts.expected_paths = case_paths;
		counts.expected_statuses = case_statuses;
	}
	FUNC1(
		FUNC8(repo, &opts, cb_status__normal, &counts));
	FUNC0(counts.expected_entry_count, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);

	opts.flags = GIT_STATUS_OPT_SORT_CASE_SENSITIVELY;

	FUNC9(&counts, 0, sizeof(counts));
	counts.expected_entry_count = 4;
	counts.expected_paths = case_paths;
	counts.expected_statuses = case_statuses;
	FUNC1(
		FUNC8(repo, &opts, cb_status__normal, &counts));
	FUNC0(counts.expected_entry_count, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);

	opts.flags = GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY;

	FUNC9(&counts, 0, sizeof(counts));
	counts.expected_entry_count = 4;
	counts.expected_paths = icase_paths;
	counts.expected_statuses = icase_statuses;
	FUNC1(
		FUNC8(repo, &opts, cb_status__normal, &counts));
	FUNC0(counts.expected_entry_count, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);
}