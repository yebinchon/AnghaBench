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
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTING_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTING_OURS_OID ; 
 int /*<<< orphan*/  CONFLICTING_THEIRS_OID ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  LINK_ANCESTOR_OID ; 
 int /*<<< orphan*/  LINK_OURS_OID ; 
 int /*<<< orphan*/  LINK_THEIRS_OID ; 
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
		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "link-1" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "link-1" },
		{ 0120000, LINK_THEIRS_OID, 3, "link-1" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "link-2" },
		{ 0120000, LINK_OURS_OID, 2, "link-2" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "link-2" },

		{ 0120000, LINK_ANCESTOR_OID, 1, "link-3" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "link-3" },
		{ 0120000, LINK_THEIRS_OID, 3, "link-3" },

		{ 0120000, LINK_ANCESTOR_OID, 1, "link-4" },
		{ 0120000, LINK_OURS_OID, 2, "link-4" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "link-4" },
	};

	opts.checkout_strategy |= GIT_CHECKOUT_SAFE;

	FUNC1(checkout_index_entries, 12);
	FUNC0(FUNC4(g_index));

	FUNC0(FUNC3(g_repo, g_index, &opts));

	/* Typechange conflicts always keep the file in the workdir */
	FUNC2("link-1", CONFLICTING_OURS_OID);
	FUNC2("link-2", CONFLICTING_THEIRS_OID);
	FUNC2("link-3", CONFLICTING_OURS_OID);
	FUNC2("link-4", CONFLICTING_THEIRS_OID);
}