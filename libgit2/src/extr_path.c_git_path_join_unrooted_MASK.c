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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,scalar_t__*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

int FUNC6(
	git_buf *path_out, const char *path, const char *base, ssize_t *root_at)
{
	ssize_t root;

	FUNC0(path && path_out);

	root = (ssize_t)FUNC4(path);

	if (base != NULL && root < 0) {
		if (FUNC1(path_out, base, path) < 0)
			return -1;

		root = (ssize_t)FUNC5(base);
	} else {
		if (FUNC2(path_out, path) < 0)
			return -1;

		if (root < 0)
			root = 0;
		else if (base)
			FUNC3(base, path, &root);
	}

	if (root_at)
		*root_at = root;

	return 0;
}