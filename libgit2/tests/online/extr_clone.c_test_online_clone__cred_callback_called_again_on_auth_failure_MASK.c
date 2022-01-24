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
struct TYPE_5__ {size_t* payload; int /*<<< orphan*/  credentials; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EUSER ; 
 int /*<<< orphan*/  _remote_url ; 
 int /*<<< orphan*/  _remote_user ; 
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cred_count_calls_cb ; 
 TYPE_3__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 

void FUNC5(void)
{
	size_t counter = 0;

	FUNC2(_remote_url);
	FUNC2(_remote_user);

	_remote_url = FUNC3("https://gitlab.com/libgit2/non-existent");
	_remote_user = FUNC3("libgit2test");

	g_options.fetch_opts.callbacks.credentials = cred_count_calls_cb;
	g_options.fetch_opts.callbacks.payload = &counter;

	FUNC1(GIT_EUSER, FUNC4(&g_repo, _remote_url, "./foo", &g_options));
	FUNC0(3, counter);
}