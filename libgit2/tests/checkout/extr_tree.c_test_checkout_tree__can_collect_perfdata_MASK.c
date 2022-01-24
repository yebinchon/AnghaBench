#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_5__ {scalar_t__ mkdir_calls; scalar_t__ stat_calls; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_checkout_perfdata ;
struct TYPE_6__ {int /*<<< orphan*/  checkout_strategy; TYPE_1__* perfdata_payload; int /*<<< orphan*/  perfdata_cb; } ;
typedef  TYPE_2__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  perfdata_cb ; 

void FUNC7(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid oid;
	git_object *obj = NULL;
	git_checkout_perfdata perfdata = {0};

	opts.perfdata_cb = perfdata_cb;
	opts.perfdata_payload = &perfdata;

	FUNC0(g_repo, "master");
	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC2(FUNC6(&oid, g_repo, "refs/heads/dir"));
	FUNC2(FUNC5(&obj, g_repo, &oid, GIT_OBJECT_ANY));

	FUNC2(FUNC3(g_repo, obj, &opts));

	FUNC1(perfdata.mkdir_calls > 0);
	FUNC1(perfdata.stat_calls > 0);

	FUNC4(obj);
}