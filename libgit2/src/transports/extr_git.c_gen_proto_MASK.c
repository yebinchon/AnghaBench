#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,char const*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(git_buf *request, const char *cmd, const char *url)
{
	char *delim, *repo;
	char host[] = "host=";
	size_t len;

	delim = FUNC6(url, '/');
	if (delim == NULL) {
		FUNC5(GIT_ERROR_NET, "malformed URL");
		return -1;
	}

	repo = delim;
	if (repo[1] == '~')
		++repo;

	delim = FUNC6(url, ':');
	if (delim == NULL)
		delim = FUNC6(url, '/');

	len = 4 + FUNC7(cmd) + 1 + FUNC7(repo) + 1 + FUNC7(host) + (delim - url) + 1;

	FUNC0(request, len);
	FUNC2(request, "%04x%s %s%c%s",
		(unsigned int)(len & 0x0FFFF), cmd, repo, 0, host);
	FUNC3(request, url, delim - url);
	FUNC4(request, '\0');

	if (FUNC1(request))
		return -1;

	return 0;
}