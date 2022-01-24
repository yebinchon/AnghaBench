#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

const char* FUNC8(const char *path)
{
	static char url[4096];

	const char *in_buf;
	git_buf path_buf = GIT_BUF_INIT;
	git_buf url_buf = GIT_BUF_INIT;

	FUNC1(FUNC6(&path_buf, path, NULL));
	FUNC1(FUNC5(&url_buf, "file://"));

#ifdef GIT_WIN32
	/*
	 * A FILE uri matches the following format: file://[host]/path
	 * where "host" can be empty and "path" is an absolute path to the resource.
	 *
	 * In this test, no hostname is used, but we have to ensure the leading triple slashes:
	 *
	 * *nix: file:///usr/home/...
	 * Windows: file:///C:/Users/...
	 */
	cl_git_pass(git_buf_putc(&url_buf, '/'));
#endif

	in_buf = FUNC2(&path_buf);

	/*
	 * A very hacky Url encoding that only takes care of escaping the spaces
	 */
	while (*in_buf) {
		if (*in_buf == ' ')
			FUNC1(FUNC5(&url_buf, "%20"));
		else
			FUNC1(FUNC4(&url_buf, *in_buf));

		in_buf++;
	}

	FUNC0(url_buf.size < 4096);

	FUNC7(url, FUNC2(&url_buf), 4096);
	FUNC3(&url_buf);
	FUNC3(&path_buf);
	return url;
}