#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(git_repository *repo, const char *remote, const char *pattern, const char *url)
{
	git_config *cfg;
	git_buf buf = GIT_BUF_INIT, canonical_url = GIT_BUF_INIT;
	int error;

	FUNC0(repo && remote);

	if ((error = FUNC2(remote)) < 0)
		return error;

	if ((error = FUNC7(&cfg, repo)) < 0)
		return error;

	if ((error = FUNC4(&buf, pattern, remote)) < 0)
		return error;

	if (url) {
		if ((error = FUNC1(&canonical_url, url)) < 0)
			goto cleanup;

		error = FUNC6(cfg, buf.ptr, url);
	} else {
		error = FUNC5(cfg, buf.ptr);
	}

cleanup:
	FUNC3(&canonical_url);
	FUNC3(&buf);

	return error;
}