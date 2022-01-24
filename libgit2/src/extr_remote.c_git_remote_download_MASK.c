#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_15__ {size_t count; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote_callbacks ;
struct TYPE_16__ {int passed_refspecs; int /*<<< orphan*/ * push; int /*<<< orphan*/  active_refspecs; int /*<<< orphan*/  refspecs; int /*<<< orphan*/  passive_refspecs; int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_remote ;
typedef  int /*<<< orphan*/  git_proxy_options ;
struct TYPE_17__ {int /*<<< orphan*/  proxy_opts; TYPE_1__ custom_headers; int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_3__ git_fetch_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_PROXY_OPTIONS_VERSION ; 
 int /*<<< orphan*/  GIT_REMOTE_CALLBACKS_VERSION ; 
 int /*<<< orphan*/  GIT_VECTOR_INIT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (TYPE_2__*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC14(git_remote *remote, const git_strarray *refspecs, const git_fetch_options *opts)
{
	int error = -1;
	size_t i;
	git_vector *to_active, specs = GIT_VECTOR_INIT, refs = GIT_VECTOR_INIT;
	const git_remote_callbacks *cbs = NULL;
	const git_strarray *custom_headers = NULL;
	const git_proxy_options *proxy = NULL;

	FUNC2(remote);

	if (!remote->repo) {
		FUNC5(GIT_ERROR_INVALID, "cannot download detached remote");
		return -1;
	}

	if (opts) {
		FUNC0(&opts->callbacks, GIT_REMOTE_CALLBACKS_VERSION, "git_remote_callbacks");
		cbs = &opts->callbacks;
		custom_headers = &opts->custom_headers;
		FUNC0(&opts->proxy_opts, GIT_PROXY_OPTIONS_VERSION, "git_proxy_options");
		proxy = &opts->proxy_opts;
	}

	if (!FUNC10(remote) &&
	    (error = FUNC9(remote, GIT_DIRECTION_FETCH, cbs, proxy, custom_headers)) < 0)
		goto on_error;

	if (FUNC13(&refs, remote) < 0)
		return -1;

	if ((FUNC12(&specs, 0, NULL)) < 0)
		goto on_error;

	remote->passed_refspecs = 0;
	if (!refspecs || !refspecs->count) {
		to_active = &remote->refspecs;
	} else {
		for (i = 0; i < refspecs->count; i++) {
			if ((error = FUNC1(&specs, refspecs->strings[i], true)) < 0)
				goto on_error;
		}

		to_active = &specs;
		remote->passed_refspecs = 1;
	}

	FUNC4(&remote->passive_refspecs);
	if ((error = FUNC3(&remote->passive_refspecs, &remote->refspecs, &refs)) < 0)
		goto on_error;

	FUNC4(&remote->active_refspecs);
	error = FUNC3(&remote->active_refspecs, to_active, &refs);

	FUNC11(&refs);
	FUNC4(&specs);
	FUNC11(&specs);

	if (error < 0)
		return error;

	if (remote->push) {
		FUNC8(remote->push);
		remote->push = NULL;
	}

	if ((error = FUNC7(remote, opts)) < 0)
		return error;

	return FUNC6(remote, cbs);

on_error:
	FUNC11(&refs);
	FUNC4(&specs);
	FUNC11(&specs);
	return error;
}