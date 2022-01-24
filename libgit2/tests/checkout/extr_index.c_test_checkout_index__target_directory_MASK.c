#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int checkout_strategy; char* target_directory; TYPE_2__* notify_payload; int /*<<< orphan*/  notify_cb; int /*<<< orphan*/  notify_flags; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  cts ;
struct TYPE_7__ {int /*<<< orphan*/  n_updates; int /*<<< orphan*/  n_ignored; int /*<<< orphan*/  n_untracked; } ;
typedef  TYPE_2__ checkout_counts ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_ALL ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  checkout_count_callback ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC9(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	checkout_counts cts;
	FUNC8(&cts, 0, sizeof(cts));

	opts.checkout_strategy = GIT_CHECKOUT_SAFE |
		GIT_CHECKOUT_RECREATE_MISSING;
	opts.target_directory = "alternative";
	FUNC1(!FUNC7("alternative"));

	opts.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
	opts.notify_cb = checkout_count_callback;
	opts.notify_payload = &cts;

	/* create some files that *would* conflict if we were using the wd */
	FUNC3("testrepo/README", "I'm in the way!\n");
	FUNC3("testrepo/new.txt", "my new file\n");

	FUNC4(FUNC5(g_repo, NULL, &opts));

	FUNC2(0, cts.n_untracked);
	FUNC2(0, cts.n_ignored);
	FUNC2(4, cts.n_updates);

	FUNC0("./alternative/README", "hey there\n");
	FUNC0("./alternative/branch_file.txt", "hi\nbye!\n");
	FUNC0("./alternative/new.txt", "my new file\n");

	FUNC4(FUNC6(
		"alternative", NULL, GIT_RMDIR_REMOVE_FILES));
}