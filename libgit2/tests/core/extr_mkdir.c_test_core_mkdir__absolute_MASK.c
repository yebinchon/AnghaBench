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
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cleanup_basic_dirs ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	git_buf path = GIT_BUF_INIT;

	FUNC3(cleanup_basic_dirs, NULL);

	FUNC6(&path, FUNC4(), "d0");

	/* make a directory */
	FUNC0(!FUNC9(path.ptr));
	FUNC2(FUNC7(path.ptr, 0755, 0));
	FUNC0(FUNC9(path.ptr));

	FUNC6(&path, path.ptr, "subdir");
	FUNC0(!FUNC9(path.ptr));
	FUNC2(FUNC7(path.ptr, 0755, 0));
	FUNC0(FUNC9(path.ptr));

	/* ensure mkdir_r works for a single subdir */
	FUNC6(&path, path.ptr, "another");
	FUNC0(!FUNC9(path.ptr));
	FUNC2(FUNC8(path.ptr, 0755));
	FUNC0(FUNC9(path.ptr));

	/* ensure mkdir_r works */
	FUNC6(&path, FUNC4(), "d1/foo/bar/asdf");
	FUNC0(!FUNC9(path.ptr));
	FUNC2(FUNC8(path.ptr, 0755));
	FUNC0(FUNC9(path.ptr));

	/* ensure we don't imply recursive */
	FUNC6(&path, FUNC4(), "d2/foo/bar/asdf");
	FUNC0(!FUNC9(path.ptr));
	FUNC1(FUNC7(path.ptr, 0755, 0));
	FUNC0(!FUNC9(path.ptr));

	FUNC5(&path);
}