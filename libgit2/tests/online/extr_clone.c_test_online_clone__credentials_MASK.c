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
struct TYPE_8__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ git_cred_userpass_payload ;
struct TYPE_6__ {TYPE_3__* payload; int /*<<< orphan*/  credentials; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_9__ {TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  _remote_pass ; 
 int /*<<< orphan*/  _remote_url ; 
 int /*<<< orphan*/  _remote_user ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  cred_default ; 
 TYPE_4__ g_options ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  git_cred_userpass ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	/* Remote URL environment variable must be set.
	 * User and password are optional.
	 */
	git_cred_userpass_payload user_pass = {
		_remote_user,
		_remote_pass
	};

	if (!_remote_url)
		FUNC3();

	if (FUNC2("GITTEST_REMOTE_DEFAULT")) {
		g_options.fetch_opts.callbacks.credentials = cred_default;
	} else {
		g_options.fetch_opts.callbacks.credentials = git_cred_userpass;
		g_options.fetch_opts.callbacks.payload = &user_pass;
	}

	FUNC1(FUNC4(&g_repo, _remote_url, "./foo", &g_options));
	FUNC5(g_repo); g_repo = NULL;
	FUNC0("./foo");
}