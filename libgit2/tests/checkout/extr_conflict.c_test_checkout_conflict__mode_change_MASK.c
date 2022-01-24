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
 int /*<<< orphan*/  CONFLICTING_DIFF3_FILE ; 
 int /*<<< orphan*/  CONFLICTING_OURS_OID ; 
 int /*<<< orphan*/  CONFLICTING_THEIRS_OID ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct checkout_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	struct checkout_index_entry checkout_index_entries[] = {
		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "executable-1" },
		{ 0100755, CONFLICTING_ANCESTOR_OID, 2, "executable-1" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "executable-1" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "executable-2" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "executable-2" },
		{ 0100755, CONFLICTING_ANCESTOR_OID, 3, "executable-2" },

		{ 0100755, CONFLICTING_ANCESTOR_OID, 1, "executable-3" },
		{ 0100644, CONFLICTING_ANCESTOR_OID, 2, "executable-3" },
		{ 0100755, CONFLICTING_THEIRS_OID, 3, "executable-3" },

		{ 0100755, CONFLICTING_ANCESTOR_OID, 1, "executable-4" },
		{ 0100755, CONFLICTING_OURS_OID, 2, "executable-4" },
		{ 0100644, CONFLICTING_ANCESTOR_OID, 3, "executable-4" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "executable-5" },
		{ 0100755, CONFLICTING_OURS_OID, 2, "executable-5" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "executable-5" },

		{ 0100755, CONFLICTING_ANCESTOR_OID, 1, "executable-6" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "executable-6" },
		{ 0100755, CONFLICTING_THEIRS_OID, 3, "executable-6" },
	};

	opts.checkout_strategy |= GIT_CHECKOUT_SAFE;

	FUNC1(checkout_index_entries, 18);
	FUNC0(FUNC6(g_index));

	FUNC0(FUNC5(g_repo, g_index, &opts));

	/* Keep the modified mode */
	FUNC4("executable-1", CONFLICTING_THEIRS_OID);
	FUNC3("executable-1", 0100755);

	FUNC4("executable-2", CONFLICTING_OURS_OID);
	FUNC3("executable-2", 0100755);

	FUNC4("executable-3", CONFLICTING_THEIRS_OID);
	FUNC3("executable-3", 0100644);

	FUNC4("executable-4", CONFLICTING_OURS_OID);
	FUNC3("executable-4", 0100644);

	FUNC2("executable-5", CONFLICTING_DIFF3_FILE);
	FUNC3("executable-5", 0100755);

	FUNC2("executable-6", CONFLICTING_DIFF3_FILE);
	FUNC3("executable-6", 0100644);
}