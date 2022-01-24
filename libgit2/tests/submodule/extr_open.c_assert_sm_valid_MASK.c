#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(git_repository *parent, git_repository *child, const char *sm_name)
{
	git_buf expected = GIT_BUF_INIT, actual = GIT_BUF_INIT;

	/* assert working directory */
	FUNC1(FUNC4(&expected, FUNC9(parent), sm_name));
	FUNC1(FUNC6(&expected, expected.ptr, NULL));
	FUNC1(FUNC5(&actual, FUNC9(child)));
	FUNC1(FUNC6(&actual, actual.ptr, NULL));
	FUNC0(expected.ptr, actual.ptr);

	FUNC2(&expected);
	FUNC2(&actual);

	/* assert common directory */
	FUNC1(FUNC4(&expected, FUNC7(parent), "modules"));
	FUNC1(FUNC4(&expected, expected.ptr, sm_name));
	FUNC1(FUNC6(&expected, expected.ptr, NULL));
	FUNC1(FUNC5(&actual, FUNC7(child)));
	FUNC1(FUNC6(&actual, actual.ptr, NULL));
	FUNC0(expected.ptr, actual.ptr);

	/* assert git directory */
	FUNC1(FUNC5(&actual, FUNC8(child)));
	FUNC1(FUNC6(&actual, actual.ptr, NULL));
	FUNC0(expected.ptr, actual.ptr);

	FUNC3(&expected);
	FUNC3(&actual);
}