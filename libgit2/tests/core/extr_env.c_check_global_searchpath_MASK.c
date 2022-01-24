#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OPT_GET_SEARCH_PATH ; 
 int /*<<< orphan*/  GIT_OPT_SET_SEARCH_PATH ; 
 int /*<<< orphan*/  GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void FUNC11(
	const char *path, int position, const char *file, git_buf *temp)
{
	git_buf out = GIT_BUF_INIT;

	/* build and set new path */
	if (position < 0)
		FUNC3(FUNC7(temp, GIT_PATH_LIST_SEPARATOR, path, "$PATH"));
	else if (position > 0)
		FUNC3(FUNC7(temp, GIT_PATH_LIST_SEPARATOR, "$PATH", path));
	else
		FUNC3(FUNC8(temp, path));

	FUNC3(FUNC9(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, temp->ptr));

	/* get path and make sure $PATH expansion worked */
	FUNC3(FUNC9(
		GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, &out));

	if (position < 0)
		FUNC0(FUNC4(out.ptr, path) == 0);
	else if (position > 0)
		FUNC0(FUNC5(out.ptr, path) == 0);
	else
		FUNC2(out.ptr, path);

	/* find file using new path */
	FUNC3(FUNC10(temp, file));

	/* reset path and confirm file not found */
	FUNC3(FUNC9(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, NULL));
	FUNC1(
		GIT_ENOTFOUND, FUNC10(temp, file));

	FUNC6(&out);
}