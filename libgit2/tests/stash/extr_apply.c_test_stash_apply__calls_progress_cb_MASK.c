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
typedef  int /*<<< orphan*/  git_stash_apply_progress_t ;
struct TYPE_4__ {int /*<<< orphan*/ * progress_payload; int /*<<< orphan*/  progress_cb; } ;
typedef  TYPE_1__ git_stash_apply_options ;

/* Variables and functions */
 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_DONE ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  progress_cb ; 
 int /*<<< orphan*/  repo ; 

void FUNC3(void)
{
	git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;
	git_stash_apply_progress_t progress = GIT_STASH_APPLY_PROGRESS_NONE;

	opts.progress_cb = progress_cb;
	opts.progress_payload = &progress;

	FUNC1(FUNC2(repo, 0, &opts));
	FUNC0(progress, GIT_STASH_APPLY_PROGRESS_DONE);
}