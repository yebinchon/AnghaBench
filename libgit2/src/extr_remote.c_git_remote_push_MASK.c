#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_strarray ;
typedef  int /*<<< orphan*/  git_remote_callbacks ;
struct TYPE_11__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_remote ;
struct TYPE_12__ {int /*<<< orphan*/  proxy_opts; int /*<<< orphan*/  custom_headers; int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_2__ git_push_options ;
typedef  int /*<<< orphan*/  git_proxy_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_PROXY_OPTIONS_VERSION ; 
 int /*<<< orphan*/  GIT_REMOTE_CALLBACKS_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,TYPE_2__ const*) ; 

int FUNC7(git_remote *remote, const git_strarray *refspecs, const git_push_options *opts)
{
	int error;
	const git_remote_callbacks *cbs = NULL;
	const git_strarray *custom_headers = NULL;
	const git_proxy_options *proxy = NULL;

	FUNC1(remote);

	if (!remote->repo) {
		FUNC2(GIT_ERROR_INVALID, "cannot download detached remote");
		return -1;
	}

	if (opts) {
		FUNC0(&opts->callbacks, GIT_REMOTE_CALLBACKS_VERSION, "git_remote_callbacks");
		cbs = &opts->callbacks;
		custom_headers = &opts->custom_headers;
		FUNC0(&opts->proxy_opts, GIT_PROXY_OPTIONS_VERSION, "git_proxy_options");
		proxy = &opts->proxy_opts;
	}

	FUNC1(remote);

	if ((error = FUNC3(remote, GIT_DIRECTION_PUSH, cbs, proxy, custom_headers)) < 0)
		return error;

	if ((error = FUNC6(remote, refspecs, opts)) < 0)
		return error;

	error = FUNC5(remote, cbs, 0, 0, NULL);

	FUNC4(remote);
	return error;
}