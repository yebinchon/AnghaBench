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
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*) ; 

int FUNC4(char **out, const char *path)
{
	size_t path_len;
	git_buf buf = GIT_BUF_INIT;

	path_len = FUNC3(path);

	if (path_len < FUNC3(".idx"))
		return FUNC2("invalid packfile path", NULL, 0);

	if (FUNC1(&buf, "%.*s.pack", (int)(path_len - FUNC3(".idx")), path) < 0)
		return -1;

	*out = FUNC0(&buf);
	return 0;
}