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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  git_win32_path ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*,int) ; 

int FUNC4(const char* path, struct stat* buf)
{
	git_win32_path path_w;
	int len;

	if ((len = FUNC2(path_w, path)) < 0 ||
		FUNC3(path_w, buf, false) < 0)
		return -1;

	/* The item is a symbolic link or mount point. No need to iterate
	 * to follow multiple links; use GetFinalPathNameFromHandle. */
	if (FUNC0(buf->st_mode))
		return FUNC1(path_w, buf);

	return 0;
}