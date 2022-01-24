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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC18(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_index *index;
	git_object *head = NULL;
	checkout_counts cts;
	FUNC17(&cts, 0, sizeof(cts));

	FUNC5();
	g_repo = FUNC6("testrepo.git");
	FUNC1(FUNC15(g_repo));

	FUNC4(FUNC14(&index, g_repo));
	FUNC4(FUNC16(&head, g_repo, "HEAD^{tree}"));
	FUNC4(FUNC10(index, (const git_tree *)head));
	FUNC4(FUNC11(index));
	FUNC9(index);

	opts.checkout_strategy = GIT_CHECKOUT_SAFE |
		GIT_CHECKOUT_RECREATE_MISSING;

	opts.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
	opts.notify_cb = checkout_count_callback;
	opts.notify_payload = &cts;

	/* fail to checkout a bare repo */
	FUNC3(FUNC7(g_repo, NULL, &opts));

	opts.target_directory = "alternative";
	FUNC1(!FUNC13("alternative"));

	FUNC4(FUNC7(g_repo, NULL, &opts));

	FUNC2(0, cts.n_untracked);
	FUNC2(0, cts.n_ignored);
	FUNC2(3, cts.n_updates);

	/* files will have been filtered if needed, so strip CR */
	FUNC0("./alternative/README", "hey there\n");
	FUNC0("./alternative/branch_file.txt", "hi\nbye!\n");
	FUNC0("./alternative/new.txt", "my new file\n");

	FUNC4(FUNC8(
		"alternative", NULL, GIT_RMDIR_REMOVE_FILES));

	FUNC12(head);
}