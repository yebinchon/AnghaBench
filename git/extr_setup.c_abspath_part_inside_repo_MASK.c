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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(char *path)
{
	size_t len;
	size_t wtlen;
	char *path0;
	int off;
	const char *work_tree = FUNC2();

	if (!work_tree)
		return -1;
	wtlen = FUNC6(work_tree);
	len = FUNC6(path);
	off = FUNC4(path);

	/* check if work tree is already the prefix */
	if (wtlen <= len && !FUNC1(path, work_tree, wtlen)) {
		if (path[wtlen] == '/') {
			FUNC3(path, path + wtlen + 1, len - wtlen);
			return 0;
		} else if (path[wtlen - 1] == '/' || path[wtlen] == '\0') {
			/* work tree is the root, or the whole path */
			FUNC3(path, path + wtlen, len - wtlen + 1);
			return 0;
		}
		/* work tree might match beginning of a symlink to work tree */
		off = wtlen;
	}
	path0 = path;
	path += off;

	/* check each '/'-terminated level */
	while (*path) {
		path++;
		if (*path == '/') {
			*path = '\0';
			if (FUNC0(FUNC5(path0), work_tree) == 0) {
				FUNC3(path0, path + 1, len - (path - path0));
				return 0;
			}
			*path = '/';
		}
	}

	/* check whole path */
	if (FUNC0(FUNC5(path0), work_tree) == 0) {
		*path0 = '\0';
		return 0;
	}

	return -1;
}