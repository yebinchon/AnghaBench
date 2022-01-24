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
typedef  int /*<<< orphan*/  git_oid ;
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
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  checkout_count_callback ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_object ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid oid;
	checkout_counts cts;
	FUNC12(&cts, 0, sizeof(cts));

	FUNC13(); /* cleanup default checkout */

	g_repo = FUNC5("testrepo.git");
	FUNC1(FUNC11(g_repo));

	opts.checkout_strategy = GIT_CHECKOUT_SAFE |
		GIT_CHECKOUT_RECREATE_MISSING;

	opts.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
	opts.notify_cb = checkout_count_callback;
	opts.notify_payload = &cts;

	FUNC4(FUNC10(&oid, g_repo, "HEAD"));
	FUNC4(FUNC8(&g_object, g_repo, &oid, GIT_OBJECT_ANY));

	FUNC3(FUNC6(g_repo, g_object, &opts));

	opts.target_directory = "alternative";
	FUNC1(!FUNC9("alternative"));

	FUNC4(FUNC6(g_repo, g_object, &opts));

	FUNC2(0, cts.n_untracked);
	FUNC2(0, cts.n_ignored);
	FUNC2(3, cts.n_updates);

	FUNC0("./alternative/README", "hey there\n");
	FUNC0("./alternative/branch_file.txt", "hi\nbye!\n");
	FUNC0("./alternative/new.txt", "my new file\n");

	FUNC4(FUNC7(
		"alternative", NULL, GIT_RMDIR_REMOVE_FILES));
}