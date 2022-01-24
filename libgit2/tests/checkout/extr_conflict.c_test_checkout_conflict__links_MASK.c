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
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  LINK_ANCESTOR_OID ; 
 int /*<<< orphan*/  LINK_OURS_OID ; 
 int /*<<< orphan*/  LINK_OURS_TARGET ; 
 int /*<<< orphan*/  LINK_THEIRS_OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct checkout_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	struct checkout_index_entry checkout_index_entries[] = {
		{ 0120000, LINK_ANCESTOR_OID, 1, "link-1" },
		{ 0120000, LINK_OURS_OID, 2, "link-1" },
		{ 0120000, LINK_THEIRS_OID, 3, "link-1" },

		{ 0120000, LINK_OURS_OID, 2, "link-2" },
		{ 0120000, LINK_THEIRS_OID, 3, "link-2" },
	};

	opts.checkout_strategy |= GIT_CHECKOUT_SAFE;

	FUNC1(checkout_index_entries, 5);
	FUNC0(FUNC4(g_index));

	FUNC0(FUNC3(g_repo, g_index, &opts));

	/* Conflicts with links always keep the ours side (even with -Xtheirs) */
	FUNC2(g_repo, "link-1", LINK_OURS_TARGET);
	FUNC2(g_repo, "link-2", LINK_OURS_TARGET);
}