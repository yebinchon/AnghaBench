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

/* Variables and functions */
 int /*<<< orphan*/  GIT_PATH_REJECT_DOS_PATHS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0(true, FUNC1(NULL, "com1", 0, 0));
	FUNC0(true, FUNC1(NULL, "com1.", 0, 0));
	FUNC0(true, FUNC1(NULL, "com1:", 0, 0));
	FUNC0(true, FUNC1(NULL, "com1.asdf", 0, 0));
	FUNC0(true, FUNC1(NULL, "com1.asdf\\zippy", 0, 0));
	FUNC0(true, FUNC1(NULL, "com1:asdf\\foobar", 0, 0));
	FUNC0(true, FUNC1(NULL, "com1\\foo", 0, 0));
	FUNC0(true, FUNC1(NULL, "lpt1", 0, 0));

	FUNC0(false, FUNC1(NULL, "com1", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(false, FUNC1(NULL, "com1.", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(false, FUNC1(NULL, "com1:", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(false, FUNC1(NULL, "com1.asdf", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(false, FUNC1(NULL, "com1.asdf\\zippy", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(false, FUNC1(NULL, "com1:asdf\\foobar", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(false, FUNC1(NULL, "com1/foo", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(false, FUNC1(NULL, "lpt1", 0, GIT_PATH_REJECT_DOS_PATHS));

	FUNC0(true, FUNC1(NULL, "com0", 0, 0));
	FUNC0(true, FUNC1(NULL, "com0", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(true, FUNC1(NULL, "com10", 0, 0));
	FUNC0(true, FUNC1(NULL, "com10", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(true, FUNC1(NULL, "comn", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(true, FUNC1(NULL, "com1\\foo", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(true, FUNC1(NULL, "lpt0", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(true, FUNC1(NULL, "lpt10", 0, GIT_PATH_REJECT_DOS_PATHS));
	FUNC0(true, FUNC1(NULL, "lptn", 0, GIT_PATH_REJECT_DOS_PATHS));
}