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
struct checkout_index_entry {int member_0; int member_2; char* member_3; int /*<<< orphan*/  member_1; } ;
struct TYPE_4__ {char* our_label; char* their_label; int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTING_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTING_OURS_OID ; 
 int /*<<< orphan*/  CONFLICTING_THEIRS_OID ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct checkout_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	struct checkout_index_entry checkout_index_entries[] = {
		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-1" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "df-1" },
		{ 0100644, CONFLICTING_THEIRS_OID, 0, "df-1/file" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-2" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "df-2" },
		{ 0100644, CONFLICTING_OURS_OID, 0, "df-2/file" },

		{ 0100644, CONFLICTING_THEIRS_OID, 3, "df-3" },
		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-3/file" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "df-3/file" },

		{ 0100644, CONFLICTING_OURS_OID, 2, "df-4" },
		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-4/file" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "df-4/file" },
	};

	opts.checkout_strategy |= GIT_CHECKOUT_SAFE;
	opts.our_label = "HEAD";
	opts.their_label = "branch";

	FUNC1(checkout_index_entries, 12);
	FUNC0(FUNC4(g_index));

	FUNC0(FUNC3(g_repo, g_index, &opts));

	FUNC2("df-1/file", CONFLICTING_THEIRS_OID);
	FUNC2("df-1~HEAD", CONFLICTING_OURS_OID);
	FUNC2("df-2/file", CONFLICTING_OURS_OID);
	FUNC2("df-2~branch", CONFLICTING_THEIRS_OID);
	FUNC2("df-3/file", CONFLICTING_OURS_OID);
	FUNC2("df-3~branch", CONFLICTING_THEIRS_OID);
	FUNC2("df-4~HEAD", CONFLICTING_OURS_OID);
	FUNC2("df-4/file", CONFLICTING_THEIRS_OID);
}