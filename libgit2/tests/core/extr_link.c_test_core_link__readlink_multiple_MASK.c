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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void)
{
	git_buf target_path = GIT_BUF_INIT,
		path3 = GIT_BUF_INIT, path2 = GIT_BUF_INIT, path1 = GIT_BUF_INIT;
	int len;
	char buf[2048];

	if (!FUNC9())
		FUNC2();

	FUNC7(&target_path, '/', FUNC3(), "readlink_final");
	FUNC7(&path3, '/', FUNC3(), "readlink_3");
	FUNC7(&path2, '/', FUNC3(), "readlink_2");
	FUNC7(&path1, '/', FUNC3(), "readlink_1");

	FUNC4(FUNC5(&target_path), FUNC5(&path3), 0);
	FUNC4(FUNC5(&path3), FUNC5(&path2), 0);
	FUNC4(FUNC5(&path2), FUNC5(&path1), 0);

	len = FUNC8("readlink_1", buf, 2048);
	FUNC1(len);

	buf[len] = 0;

	FUNC0(FUNC5(&path2), buf);

	FUNC6(&path1);
	FUNC6(&path2);
	FUNC6(&path3);
	FUNC6(&target_path);
}