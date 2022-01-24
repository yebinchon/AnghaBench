#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int (* git_remote_create_cb ) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*,void*) ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_3__ {int (* remote_cb ) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*,void*) ;void* remote_cb_payload; } ;
typedef  TYPE_1__ git_clone_options ;

/* Variables and functions */
 int GIT_PATH_MAX ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*,void*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(
		git_remote **out,
		git_repository *repo,
		const char *url,
		const git_clone_options *options)
{
	int error;
	git_remote *origin = NULL;
	char buf[GIT_PATH_MAX];
	git_remote_create_cb remote_create = options->remote_cb;
	void *payload = options->remote_cb_payload;

	/* If the path exists and is a dir, the url should be the absolute path */
	if (FUNC3(url) < 0 && FUNC1(url) && FUNC2(url)) {
		if (FUNC5(url, buf) == NULL)
			return -1;

		url = buf;
	}

	if (!remote_create) {
		remote_create = default_remote_create;
		payload = NULL;
	}

	if ((error = remote_create(&origin, repo, "origin", url, payload)) < 0)
		goto on_error;

	*out = origin;
	return 0;

on_error:
	FUNC4(origin);
	return error;
}