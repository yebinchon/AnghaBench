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
 int /*<<< orphan*/  AUTOMERGEABLE_ANCESTOR_OID ; 
 int /*<<< orphan*/  AUTOMERGEABLE_MERGED_FILE ; 
 int /*<<< orphan*/  AUTOMERGEABLE_OURS_OID ; 
 int /*<<< orphan*/  AUTOMERGEABLE_THEIRS_OID ; 
 int /*<<< orphan*/  CONFLICTING_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTING_OURS_FILE ; 
 int /*<<< orphan*/  CONFLICTING_OURS_OID ; 
 int /*<<< orphan*/  CONFLICTING_THEIRS_OID ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_UPDATE_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct checkout_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

void FUNC10(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	struct checkout_index_entry checkout_index_entries[] = {
		{ 0100644, AUTOMERGEABLE_ANCESTOR_OID, 1, "automergeable.txt" },
		{ 0100644, AUTOMERGEABLE_OURS_OID, 2, "automergeable.txt" },
		{ 0100644, AUTOMERGEABLE_THEIRS_OID, 3, "automergeable.txt" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "modify-delete" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "modify-delete" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "directory_file-one" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "directory_file-one" },
		{ 0100644, CONFLICTING_THEIRS_OID, 0, "directory_file-one/file" },

		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "directory_file-two" },
		{ 0100644, CONFLICTING_OURS_OID, 0, "directory_file-two/file" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "directory_file-two" },
	};

	opts.checkout_strategy |= GIT_CHECKOUT_UPDATE_ONLY;

	FUNC3(checkout_index_entries, 3);
	FUNC1(FUNC7(g_index));

	FUNC1(FUNC9("merge-resolve/directory_file-two", 0777));
	FUNC2("merge-resolve/directory_file-two/file", CONFLICTING_OURS_FILE);

	FUNC1(FUNC6(g_repo, g_index, &opts));

	FUNC5("automergeable.txt", AUTOMERGEABLE_MERGED_FILE);
	FUNC4("directory_file-two/file", 0100644, CONFLICTING_OURS_OID);

	FUNC0(!FUNC8("merge-resolve/modify-delete"));
	FUNC0(!FUNC8("merge-resolve/test-one.txt"));
	FUNC0(!FUNC8("merge-resolve/test-one-side-one.txt"));
	FUNC0(!FUNC8("merge-resolve/test-one-side-two.txt"));
	FUNC0(!FUNC8("merge-resolve/test-one.txt~ours"));
	FUNC0(!FUNC8("merge-resolve/test-one.txt~theirs"));
	FUNC0(!FUNC8("merge-resolve/directory_file-one/file"));
	FUNC0(!FUNC8("merge-resolve/directory_file-one~ours"));
	FUNC0(!FUNC8("merge-resolve/directory_file-two~theirs"));
}