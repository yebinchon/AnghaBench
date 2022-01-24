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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int* payload; int /*<<< orphan*/  transport; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_8__ {TYPE_2__ fetch_opts; int /*<<< orphan*/  remote_cb; } ;
typedef  TYPE_3__ git_clone_options ;

/* Variables and functions */
 TYPE_3__ GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  custom_transport ; 
 int /*<<< orphan*/  custom_transport_remote_create ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	git_repository *repo;
	git_clone_options clone_opts = GIT_CLONE_OPTIONS_INIT;
	int custom_transport_used = 0;

	clone_opts.remote_cb = custom_transport_remote_create;
	clone_opts.fetch_opts.callbacks.transport = custom_transport;
	clone_opts.fetch_opts.callbacks.payload = &custom_transport_used;

	FUNC2(FUNC3(&repo, FUNC1("testrepo.git"), "./custom_transport.git", &clone_opts));
	FUNC5(repo);

	FUNC2(FUNC4("./custom_transport.git", NULL, GIT_RMDIR_REMOVE_FILES));

	FUNC0(custom_transport_used == 1);
}