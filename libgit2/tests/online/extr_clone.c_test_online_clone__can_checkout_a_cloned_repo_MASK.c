#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_7__ {int* payload; int /*<<< orphan*/ * transfer_progress; } ;
struct TYPE_8__ {TYPE_2__ callbacks; } ;
struct TYPE_6__ {int* progress_payload; int /*<<< orphan*/ * progress_cb; int /*<<< orphan*/  checkout_strategy; } ;
struct TYPE_9__ {TYPE_3__ fetch_opts; TYPE_1__ checkout_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  LIVE_REPO_URL ; 
 int /*<<< orphan*/  checkout_progress ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fetch_progress ; 
 TYPE_4__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_buf path = GIT_BUF_INIT;
	git_reference *head;
	bool checkout_progress_cb_was_called = false,
		  fetch_progress_cb_was_called = false;

	g_options.checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
	g_options.checkout_opts.progress_cb = &checkout_progress;
	g_options.checkout_opts.progress_payload = &checkout_progress_cb_was_called;
	g_options.fetch_opts.callbacks.transfer_progress = &fetch_progress;
	g_options.fetch_opts.callbacks.payload = &fetch_progress_cb_was_called;

	FUNC2(FUNC6(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

	FUNC2(FUNC5(&path, FUNC12(g_repo), "master.txt"));
	FUNC0(true, FUNC7(FUNC3(&path)));

	FUNC2(FUNC9(&head, g_repo, "HEAD"));
	FUNC0(GIT_REFERENCE_SYMBOLIC, FUNC11(head));
	FUNC1("refs/heads/master", FUNC10(head));

	FUNC0(true, checkout_progress_cb_was_called);
	FUNC0(true, fetch_progress_cb_was_called);

	FUNC8(head);
	FUNC4(&path);
}