#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_10__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int FUNC8 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char) ; 

int FUNC10(git_buf *out, git_repository *repo, const char *url)
{
	int error = 0;
	git_buf normalized = GIT_BUF_INIT;

	FUNC0(out && repo && url);

	FUNC3(out);

	/* We do this in all platforms in case someone on Windows created the .gitmodules */
	if (FUNC9(url, '\\')) {
		if ((error = FUNC8(&normalized, url)) < 0)
			return error;

		url = normalized.ptr;
	}


	if (FUNC7(url)) {
		if (!(error = FUNC1(out, repo)))
			error = FUNC6(out, url);
	} else if (FUNC9(url, ':') != NULL || url[0] == '/') {
		error = FUNC4(out, url);
	} else {
		FUNC5(GIT_ERROR_SUBMODULE, "invalid format for submodule URL");
		error = -1;
	}

	FUNC2(&normalized);
	return error;
}