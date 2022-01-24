#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int flags; char* fetchspec; int /*<<< orphan*/ * name; int /*<<< orphan*/  repository; } ;
typedef  TYPE_1__ git_remote_create_options ;
struct TYPE_21__ {int /*<<< orphan*/  download_tags; int /*<<< orphan*/  refs; int /*<<< orphan*/  refspecs; int /*<<< orphan*/  active_refspecs; struct TYPE_21__* name; struct TYPE_21__* url; int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_remote ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_22__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_URL_FMT ; 
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_CREATE_OPTIONS_VERSION ; 
 int GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC ; 
 int GIT_REMOTE_CREATE_SKIP_INSTEADOF ; 
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_AUTO ; 
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_NONE ; 
 int FUNC2 (TYPE_2__*,char const*,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_3__*,char const*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 

int FUNC23(git_remote **out, const char *url, const git_remote_create_options *opts)
{
	git_remote *remote = NULL;
	git_config *config_ro = NULL, *config_rw;
	git_buf canonical_url = GIT_BUF_INIT;
	git_buf var = GIT_BUF_INIT;
	git_buf specbuf = GIT_BUF_INIT;
	const git_remote_create_options dummy_opts = GIT_REMOTE_CREATE_OPTIONS_INIT;
	int error = -1;

	FUNC4(out && url);

	if (!opts) {
		opts = &dummy_opts;
	}

	FUNC1(opts, GIT_REMOTE_CREATE_OPTIONS_VERSION, "git_remote_create_options");

	if (opts->name != NULL) {
		if ((error = FUNC9(opts->name)) < 0)
			return error;

		if (opts->repository &&
		    (error = FUNC8(opts->repository, opts->name)) < 0)
			return error;
	}

	if (opts->repository) {
		if ((error = FUNC19(&config_ro, opts->repository)) < 0)
			goto on_error;
	}

	remote = FUNC10(1, sizeof(git_remote));
	FUNC0(remote);

	remote->repo = opts->repository;

	if ((error = FUNC20(&remote->refs, 8, NULL)) < 0 ||
		(error = FUNC5(&canonical_url, url)) < 0)
		goto on_error;

	if (opts->repository && !(opts->flags & GIT_REMOTE_CREATE_SKIP_INSTEADOF)) {
		remote->url = FUNC3(config_ro, canonical_url.ptr, GIT_DIRECTION_FETCH);
	} else {
		remote->url = FUNC11(canonical_url.ptr);
	}
	FUNC0(remote->url);

	if (opts->name != NULL) {
		remote->name = FUNC11(opts->name);
		FUNC0(remote->name);

		if (opts->repository &&
		    ((error = FUNC14(&var, CONFIG_URL_FMT, opts->name)) < 0 ||
		    (error = FUNC18(&config_rw, opts->repository)) < 0 ||
		    (error = FUNC16(config_rw, var.ptr, canonical_url.ptr)) < 0))
			goto on_error;
	}

	if (opts->fetchspec != NULL ||
	    (opts->name && !(opts->flags & GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC))) {
		const char *fetch = NULL;
		if (opts->fetchspec) {
			fetch = opts->fetchspec;
		} else {
			if ((error = FUNC6(&specbuf, opts->name)) < 0)
				goto on_error;

			fetch = FUNC12(&specbuf);
		}

		if ((error = FUNC2(remote, fetch, true)) < 0)
			goto on_error;

		/* only write for named remotes with a repository */
		if (opts->repository && opts->name &&
		    ((error = FUNC22(opts->repository, opts->name, fetch, true)) < 0 ||
		    (error = FUNC21(remote, config_ro, opts->name)) < 0))
			goto on_error;

		/* Move the data over to where the matching functions can find them */
		if ((error = FUNC7(&remote->active_refspecs, &remote->refspecs, &remote->refs)) < 0)
			goto on_error;
	}

	/* A remote without a name doesn't download tags */
	if (!opts->name)
		remote->download_tags = GIT_REMOTE_DOWNLOAD_TAGS_NONE;
	else
		remote->download_tags = GIT_REMOTE_DOWNLOAD_TAGS_AUTO;


	FUNC13(&var);

	*out = remote;
	error = 0;

on_error:
	if (error)
		FUNC17(remote);

	FUNC15(config_ro);
	FUNC13(&specbuf);
	FUNC13(&canonical_url);
	FUNC13(&var);
	return error;
}