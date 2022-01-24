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
struct status_entry {char* member_1; char* member_2; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STATUS_INDEX_MODIFIED ; 
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct status_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC9(void)
{
	git_index *index;
	git_status_list *statuslist;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	struct status_entry expected[] = {
		{ GIT_STATUS_INDEX_MODIFIED, "ikeepsix.txt", "ikeepsix.txt" },
		{ GIT_STATUS_INDEX_MODIFIED, "sixserving.txt", "sixserving.txt" },
	};

	opts.flags |= GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX;

	FUNC1(FUNC5(&index, g_repo));

	FUNC8(g_repo, "ikeepsix.txt", "_temp_.txt");
	FUNC8(g_repo, "sixserving.txt", "ikeepsix.txt");
	FUNC8(g_repo, "_temp_.txt", "sixserving.txt");

	FUNC1(FUNC2(index, "ikeepsix.txt"));
	FUNC1(FUNC2(index, "sixserving.txt"));
	FUNC1(FUNC4(index));

	FUNC1(FUNC7(&statuslist, g_repo, &opts));
	FUNC0(statuslist, expected, 2);
	FUNC6(statuslist);

	FUNC3(index);
}