#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB_EXECUTABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 

mode_t FUNC5(const char *path)
{
	git_buf fullpath = GIT_BUF_INIT;
	struct stat st;
	mode_t result;

	FUNC3(&fullpath, "testrepo", path);
	FUNC1(FUNC4(fullpath.ptr, &st));

	result = FUNC0(st.st_mode) ?
		GIT_FILEMODE_BLOB_EXECUTABLE : GIT_FILEMODE_BLOB;

	FUNC2(&fullpath);

	return result;
}