#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_strarray ;
struct TYPE_14__ {int /*<<< orphan*/ * proxy; int /*<<< orphan*/ * custom_headers; } ;
typedef  TYPE_1__ git_remote_connection_opts ;
typedef  int /*<<< orphan*/  git_remote_callbacks ;
typedef  int /*<<< orphan*/  git_remote_autotag_option_t ;
struct TYPE_15__ {int prune_refs; scalar_t__ url; scalar_t__ name; int /*<<< orphan*/  download_tags; } ;
typedef  TYPE_2__ git_remote ;
struct TYPE_16__ {int update_fetchhead; scalar_t__ prune; int /*<<< orphan*/  proxy_opts; int /*<<< orphan*/  download_tags; int /*<<< orphan*/  custom_headers; int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_3__ git_fetch_options ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ GIT_FETCH_NO_PRUNE ; 
 scalar_t__ GIT_FETCH_PRUNE ; 
 scalar_t__ GIT_FETCH_PRUNE_UNSPECIFIED ; 
 int /*<<< orphan*/  GIT_PROXY_OPTIONS_VERSION ; 
 int /*<<< orphan*/  GIT_REMOTE_CALLBACKS_VERSION ; 
 TYPE_1__ GIT_REMOTE_CONNECTION_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/  const*,TYPE_3__ const*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(
		git_remote *remote,
		const git_strarray *refspecs,
		const git_fetch_options *opts,
		const char *reflog_message)
{
	int error, update_fetchhead = 1;
	git_remote_autotag_option_t tagopt = remote->download_tags;
	bool prune = false;
	git_buf reflog_msg_buf = GIT_BUF_INIT;
	const git_remote_callbacks *cbs = NULL;
	git_remote_connection_opts conn = GIT_REMOTE_CONNECTION_OPTIONS_INIT;

	if (opts) {
		FUNC0(&opts->callbacks, GIT_REMOTE_CALLBACKS_VERSION, "git_remote_callbacks");
		cbs = &opts->callbacks;
		conn.custom_headers = &opts->custom_headers;
		update_fetchhead = opts->update_fetchhead;
		tagopt = opts->download_tags;
		FUNC0(&opts->proxy_opts, GIT_PROXY_OPTIONS_VERSION, "git_proxy_options");
		conn.proxy = &opts->proxy_opts;
	}

	/* Connect and download everything */
	if ((error = FUNC5(remote, GIT_DIRECTION_FETCH, cbs, &conn)) != 0)
		return error;

	error = FUNC7(remote, refspecs, opts);

	/* We don't need to be connected anymore */
	FUNC6(remote);

	/* If the download failed, return the error */
	if (error != 0)
		return error;

	/* Default reflog message */
	if (reflog_message)
		FUNC4(&reflog_msg_buf, reflog_message);
	else {
		FUNC3(&reflog_msg_buf, "fetch %s",
				remote->name ? remote->name : remote->url);
	}

	/* Create "remote/foo" branches for all remote branches */
	error = FUNC9(remote, cbs, update_fetchhead, tagopt, FUNC1(&reflog_msg_buf));
	FUNC2(&reflog_msg_buf);
	if (error < 0)
		return error;

	if (opts && opts->prune == GIT_FETCH_PRUNE)
		prune = true;
	else if (opts && opts->prune == GIT_FETCH_PRUNE_UNSPECIFIED && remote->prune_refs)
		prune = true;
	else if (opts && opts->prune == GIT_FETCH_NO_PRUNE)
		prune = false;
	else
		prune = remote->prune_refs;

	if (prune)
		error = FUNC8(remote, cbs);

	return error;
}