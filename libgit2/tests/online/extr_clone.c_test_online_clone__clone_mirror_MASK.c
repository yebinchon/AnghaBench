#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_6__ {int* payload; int /*<<< orphan*/ * transfer_progress; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_8__ {int bare; int /*<<< orphan*/  remote_cb; TYPE_2__ fetch_opts; } ;
typedef  TYPE_3__ git_clone_options ;

/* Variables and functions */
 TYPE_3__ GIT_CLONE_OPTIONS_INIT ; 
 int GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  LIVE_REPO_URL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fetch_progress ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote_mirror_cb ; 

void FUNC10(void)
{
	git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
	git_reference *head;

	bool fetch_progress_cb_was_called = false;

	opts.fetch_opts.callbacks.transfer_progress = &fetch_progress;
	opts.fetch_opts.callbacks.payload = &fetch_progress_cb_was_called;

	opts.bare = true;
	opts.remote_cb = remote_mirror_cb;

	FUNC3(FUNC4(&g_repo, LIVE_REPO_URL, "./foo.git", &opts));

	FUNC3(FUNC6(&head, g_repo, "HEAD"));
	FUNC0(GIT_REFERENCE_SYMBOLIC, FUNC8(head));
	FUNC1("refs/heads/master", FUNC7(head));

	FUNC0(true, fetch_progress_cb_was_called);

	FUNC5(head);
	FUNC9(g_repo);
	g_repo = NULL;

	FUNC2("./foo.git");
}