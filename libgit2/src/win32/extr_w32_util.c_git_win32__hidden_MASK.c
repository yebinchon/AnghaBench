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
typedef  int /*<<< orphan*/  git_win32_path ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 

int FUNC2(bool *out, const char *path)
{
	git_win32_path buf;
	DWORD attrs;

	if (FUNC1(buf, path) < 0)
		return -1;

	attrs = FUNC0(buf);

	/* Ensure the path exists */
	if (attrs == INVALID_FILE_ATTRIBUTES)
		return -1;

	*out = (attrs & FILE_ATTRIBUTE_HIDDEN) ? true : false;
	return 0;
}