#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CLONE_LOCAL ; 
 int /*<<< orphan*/  GIT_CLONE_LOCAL_AUTO ; 
 int /*<<< orphan*/  GIT_CLONE_LOCAL_NO_LINKS ; 
 int /*<<< orphan*/  GIT_CLONE_NO_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_buf buf = GIT_BUF_INIT;

	/* we use a fixture path because it needs to exist for us to want to clone */
	const char *path = FUNC1("testrepo.git");

	FUNC2(FUNC3(&buf, "", path));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_LOCAL_AUTO));
	FUNC0(1,  FUNC7(buf.ptr, GIT_CLONE_LOCAL));
	FUNC0(1,  FUNC7(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_NO_LOCAL));

	FUNC2(FUNC3(&buf, "localhost", path));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_LOCAL_AUTO));
	FUNC0(1,  FUNC7(buf.ptr, GIT_CLONE_LOCAL));
	FUNC0(1,  FUNC7(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_NO_LOCAL));

	FUNC2(FUNC3(&buf, "other-host.mycompany.com", path));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_LOCAL_AUTO));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_LOCAL));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_NO_LOCAL));

	/* Ensure that file:/// urls are percent decoded: .git == %2e%67%69%74 */
	FUNC2(FUNC3(&buf, "", path));
	FUNC6(&buf, 4);
	FUNC2(FUNC5(&buf, "%2e%67%69%74"));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_LOCAL_AUTO));
	FUNC0(1,  FUNC7(buf.ptr, GIT_CLONE_LOCAL));
	FUNC0(1,  FUNC7(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
	FUNC0(0, FUNC7(buf.ptr, GIT_CLONE_NO_LOCAL));

	FUNC0(1,  FUNC7(path, GIT_CLONE_LOCAL_AUTO));
	FUNC0(1,  FUNC7(path, GIT_CLONE_LOCAL));
	FUNC0(1,  FUNC7(path, GIT_CLONE_LOCAL_NO_LINKS));
	FUNC0(0, FUNC7(path, GIT_CLONE_NO_LOCAL));

	FUNC4(&buf);
}