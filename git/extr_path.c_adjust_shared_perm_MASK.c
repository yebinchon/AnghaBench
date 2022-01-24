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
 int FORCE_DIR_SET_GID ; 
 int S_IFMT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char const*,int*) ; 

int FUNC5(const char *path)
{
	int old_mode, new_mode;

	if (!FUNC3())
		return 0;
	if (FUNC4(path, &old_mode) < 0)
		return -1;

	new_mode = FUNC1(old_mode);
	if (FUNC0(old_mode)) {
		/* Copy read bits to execute bits */
		new_mode |= (new_mode & 0444) >> 2;
		new_mode |= FORCE_DIR_SET_GID;
	}

	if (((old_mode ^ new_mode) & ~S_IFMT) &&
			FUNC2(path, (new_mode & ~S_IFMT)) < 0)
		return -2;
	return 0;
}