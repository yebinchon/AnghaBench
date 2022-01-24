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
struct TYPE_5__ {int /*<<< orphan*/  credentials; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cred_foo_bar ; 
 TYPE_3__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,TYPE_3__*) ; 

void FUNC3(void)
{
#ifndef GIT_SSH
	FUNC1();
#endif
	g_options.fetch_opts.callbacks.credentials = cred_foo_bar;

	FUNC0(FUNC2(&g_repo, "ssh://git@github.com/libgit2/TestGitRepository", "./foo", &g_options));
}