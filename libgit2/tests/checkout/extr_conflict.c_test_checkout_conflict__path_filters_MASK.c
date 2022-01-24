#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct checkout_index_entry {int member_0; int member_2; char* member_3; int /*<<< orphan*/  member_1; } ;
struct TYPE_5__ {int count; char** strings; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
struct TYPE_6__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOMERGEABLE_ANCESTOR_OID ; 
 int /*<<< orphan*/  AUTOMERGEABLE_MERGED_FILE ; 
 int /*<<< orphan*/  AUTOMERGEABLE_OURS_OID ; 
 int /*<<< orphan*/  AUTOMERGEABLE_THEIRS_OID ; 
 int /*<<< orphan*/  CONFLICTING_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTING_DIFF3_FILE ; 
 int /*<<< orphan*/  CONFLICTING_OURS_OID ; 
 int /*<<< orphan*/  CONFLICTING_THEIRS_OID ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct checkout_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	char *paths[] = { "conflicting-1.txt", "conflicting-3.txt" };
	git_strarray patharray = {0};

	struct checkout_index_entry checkout_index_entries[] = {
		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "conflicting-1.txt" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "conflicting-1.txt" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "conflicting-1.txt" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "conflicting-2.txt" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "conflicting-2.txt" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "conflicting-2.txt" },

		{ 0100644, AUTOMERGEABLE_ANCESTOR_OID, 1, "conflicting-3.txt" },
		{ 0100644, AUTOMERGEABLE_OURS_OID, 2, "conflicting-3.txt" },
		{ 0100644, AUTOMERGEABLE_THEIRS_OID, 3, "conflicting-3.txt" },

		{ 0100644, AUTOMERGEABLE_ANCESTOR_OID, 1, "conflicting-4.txt" },
		{ 0100644, AUTOMERGEABLE_OURS_OID, 2, "conflicting-4.txt" },
		{ 0100644, AUTOMERGEABLE_THEIRS_OID, 3, "conflicting-4.txt" },
	};

	patharray.count = 2;
	patharray.strings = paths;

	opts.paths = patharray;

	FUNC2(checkout_index_entries, 12);
	FUNC1(FUNC5(g_index));

	FUNC1(FUNC4(g_repo, g_index, &opts));

	FUNC3("conflicting-1.txt", CONFLICTING_DIFF3_FILE);
	FUNC0(!FUNC6("merge-resolve/conflicting-2.txt"));
	FUNC3("conflicting-3.txt", AUTOMERGEABLE_MERGED_FILE);
	FUNC0(!FUNC6("merge-resolve/conflicting-4.txt"));
}