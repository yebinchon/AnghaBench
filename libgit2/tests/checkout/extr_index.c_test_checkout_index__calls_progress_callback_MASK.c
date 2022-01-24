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
struct TYPE_4__ {int checkout_strategy; int* progress_payload; int /*<<< orphan*/  progress_cb; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  checkout_progress_counter ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC3(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	int calls = 0;

	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;
	opts.progress_cb = checkout_progress_counter;
	opts.progress_payload = &calls;

	FUNC1(FUNC2(g_repo, NULL, &opts));
	FUNC0(calls > 0);
}