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
typedef  int /*<<< orphan*/  git_attr_session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_SYSDIR_SYSTEM ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void FUNC15(void)
{
	const char *values[2], *attrs[2] = { "foo", "bar" };
	git_buf sysdir = GIT_BUF_INIT;
	git_attr_session session;

	FUNC2(FUNC12("system", 0777));
	FUNC3("system/gitattributes", "file foo=1 bar=2");
	FUNC2(FUNC10(&sysdir, FUNC5(), "system"));
	FUNC2(FUNC11(GIT_SYSDIR_SYSTEM, sysdir.ptr));
	g_repo = FUNC4();

	FUNC2(FUNC8(&session, g_repo));
	FUNC2(FUNC6(values, g_repo, &session, 0, "file", FUNC0(attrs), attrs));

	FUNC1(values[0], "1");
	FUNC1(values[1], "2");

	FUNC2(FUNC14("system/gitattributes"));
	FUNC2(FUNC13("system"));
	FUNC9(&sysdir);
	FUNC7(&session);
}