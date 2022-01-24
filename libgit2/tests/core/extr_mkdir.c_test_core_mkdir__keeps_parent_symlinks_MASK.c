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
struct TYPE_5__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_MKDIR_PATH ; 
 int GIT_MKDIR_REMOVE_SYMLINKS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cleanup_basic_dirs ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

void FUNC11(void)
{
#ifndef GIT_WIN32
	git_buf path = GIT_BUF_INIT;

	FUNC3(cleanup_basic_dirs, NULL);

	/* make a directory */
	FUNC0(!FUNC8("d0"));
	FUNC1(FUNC7("d0", 0755, 0));
	FUNC0(FUNC8("d0"));

	FUNC2(FUNC10("d0", "d1"));
	FUNC0(FUNC9("d1"));

	FUNC1(FUNC7("d1/foo/bar", 0755, GIT_MKDIR_PATH|GIT_MKDIR_REMOVE_SYMLINKS));
	FUNC0(FUNC9("d1"));
	FUNC0(FUNC8("d1/foo/bar"));
	FUNC0(FUNC8("d0/foo/bar"));

	FUNC2(FUNC10("d0", "d2"));
	FUNC0(FUNC9("d2"));

	FUNC6(&path, FUNC4(), "d2/other/dir");

	FUNC1(FUNC7(path.ptr, 0755, GIT_MKDIR_PATH|GIT_MKDIR_REMOVE_SYMLINKS));
	FUNC0(FUNC9("d2"));
	FUNC0(FUNC8("d2/other/dir"));
	FUNC0(FUNC8("d0/other/dir"));

	FUNC5(&path);
#endif
}