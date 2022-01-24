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
struct TYPE_5__ {int* payload; int /*<<< orphan*/  update_tips; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIVE_REPO_URL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  update_tips ; 

void FUNC3(void)
{
	int callcount = 0;

	g_options.fetch_opts.callbacks.update_tips = update_tips;
	g_options.fetch_opts.callbacks.payload = &callcount;

	FUNC1(FUNC2(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
	FUNC0(callcount > 0);
}