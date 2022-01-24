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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static char* FUNC7(void)
{
	struct strbuf buf = STRBUF_INIT;
	char *pathinfo = FUNC3("PATH_INFO");
	char *root = FUNC3("GIT_PROJECT_ROOT");
	char *path = FUNC3("PATH_TRANSLATED");

	if (root && *root) {
		if (!pathinfo || !*pathinfo)
			FUNC1("GIT_PROJECT_ROOT is set but PATH_INFO is not");
		if (FUNC0(pathinfo))
			FUNC1("'%s': aliased", pathinfo);
		FUNC2(&buf, root);
		if (pathinfo[0] == '/')
			pathinfo++;
		FUNC4(&buf, pathinfo);
		return FUNC5(&buf, NULL);
	} else if (path && *path) {
		return FUNC6(path);
	} else
		FUNC1("No GIT_PROJECT_ROOT or PATH_TRANSLATED from server");
	return NULL;
}