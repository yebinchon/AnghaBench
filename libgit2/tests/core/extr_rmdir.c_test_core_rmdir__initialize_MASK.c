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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  empty_tmp_dir ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(void)
{
	git_buf path = GIT_BUF_INIT;

	FUNC1(FUNC4(empty_tmp_dir, 0777));

	FUNC0(FUNC3(&path, empty_tmp_dir, "/one"));
	FUNC1(FUNC4(path.ptr, 0777));

	FUNC0(FUNC3(&path, empty_tmp_dir, "/one/two_one"));
	FUNC1(FUNC4(path.ptr, 0777));

	FUNC0(FUNC3(&path, empty_tmp_dir, "/one/two_two"));
	FUNC1(FUNC4(path.ptr, 0777));

	FUNC0(FUNC3(&path, empty_tmp_dir, "/one/two_two/three"));
	FUNC1(FUNC4(path.ptr, 0777));

	FUNC0(FUNC3(&path, empty_tmp_dir, "/two"));
	FUNC1(FUNC4(path.ptr, 0777));

	FUNC2(&path);
}