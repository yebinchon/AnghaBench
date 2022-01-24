#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  transfer_progress; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {char* checkout_branch; TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  clone_cancel_fetch_transfer_progress_cb ; 
 TYPE_3__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	g_options.checkout_branch = "test";

	g_options.fetch_opts.callbacks.transfer_progress =
		clone_cancel_fetch_transfer_progress_cb;

	FUNC1(FUNC3(
		&g_repo, FUNC2("testrepo.git"), "./foo", &g_options),
		-54321);

	FUNC0(!g_repo);
	FUNC0(!FUNC4("foo/readme.txt"));
}