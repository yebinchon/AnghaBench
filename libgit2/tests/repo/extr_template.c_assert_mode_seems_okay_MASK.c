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
struct stat {int st_mode; } ;
typedef  int git_filemode_t ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void FUNC9(
	const char *base, const char *path,
	git_filemode_t expect_mode, bool expect_setgid, bool core_filemode)
{
	git_buf full = GIT_BUF_INIT;
	struct stat st;

	FUNC5(FUNC7(&full, base, path));
	FUNC5(FUNC8(full.ptr, &st));
	FUNC6(&full);

	if (!core_filemode) {
		FUNC0(expect_mode);
		FUNC0(st.st_mode);
		expect_setgid = false;
	}

	if (S_ISGID != 0)
		FUNC3(expect_setgid, (st.st_mode & S_ISGID) != 0);

	FUNC3(
		FUNC2(expect_mode), FUNC2(st.st_mode));

	FUNC4(
		FUNC1(expect_mode), FUNC1(st.st_mode), "%07o");
}