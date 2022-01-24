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
struct TYPE_3__ {int /*<<< orphan*/ * namespace; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC10(git_repository *repo, const char *in)
{
	git_buf path = GIT_BUF_INIT;
	char *parts, *start, *end, *out = NULL;

	if (!in)
		goto done;

	FUNC7(&path, in);

	/* if the repo is not namespaced, nothing else to do */
	if (repo->namespace == NULL) {
		out = FUNC4(&path);
		goto done;
	}

	parts = end = FUNC1(repo->namespace);
	if (parts == NULL)
		goto done;

	/*
	 * From `man gitnamespaces`:
	 *  namespaces which include a / will expand to a hierarchy
	 *  of namespaces; for example, GIT_NAMESPACE=foo/bar will store
	 *  refs under refs/namespaces/foo/refs/namespaces/bar/
	 */
	while ((start = FUNC2(&end, "/")) != NULL)
		FUNC6(&path, "refs/namespaces/%s/", start);

	FUNC6(&path, "refs/namespaces/%s/refs", end);
	FUNC0(parts);

	/* Make sure that the folder with the namespace exists */
	if (FUNC9(FUNC3(&path), in, 0777,
			GIT_MKDIR_PATH, NULL) < 0)
		goto done;

	/* Return root of the namespaced gitpath, i.e. without the trailing '/refs' */
	FUNC8(&path, '/');
	out = FUNC4(&path);

done:
	FUNC5(&path);
	return out;
}