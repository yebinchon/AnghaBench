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
struct checkout {scalar_t__ force; int /*<<< orphan*/  base_dir_len; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(const char *path, int path_len,
			       const struct checkout *state)
{
	char *buf = FUNC5(path_len);
	int len = 0;

	while (len < path_len) {
		do {
			buf[len] = path[len];
			len++;
		} while (len < path_len && path[len] != '/');
		if (len >= path_len)
			break;
		buf[len] = 0;

		/*
		 * For 'checkout-index --prefix=<dir>', <dir> is
		 * allowed to be a symlink to an existing directory,
		 * and we set 'state->base_dir_len' below, such that
		 * we test the path components of the prefix with the
		 * stat() function instead of the lstat() function.
		 */
		if (FUNC2(buf, len, state->base_dir_len))
			continue; /* ok, it is already a directory. */

		/*
		 * If this mkdir() would fail, it could be that there
		 * is already a symlink or something else exists
		 * there, therefore we then try to unlink it and try
		 * one more time to create the directory.
		 */
		if (FUNC3(buf, 0777)) {
			if (errno == EEXIST && state->force &&
			    !FUNC4(buf) && !FUNC3(buf, 0777))
				continue;
			FUNC0("cannot create directory at '%s'", buf);
		}
	}
	FUNC1(buf);
}