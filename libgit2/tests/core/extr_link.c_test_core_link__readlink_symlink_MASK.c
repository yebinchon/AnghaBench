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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(void)
{
	git_buf target_path = GIT_BUF_INIT;
	int len;
	char buf[2048];

	if (!FUNC10())
		FUNC3();

	FUNC8(&target_path, '/', FUNC4(), "readlink_target");

	FUNC1("readlink_target", "This is the target of a symlink\n");
	FUNC5(FUNC6(&target_path), "readlink_link", 0);

	len = FUNC9("readlink_link", buf, 2048);
	FUNC2(len);

	buf[len] = 0;

	FUNC0(FUNC6(&target_path), buf);

	FUNC7(&target_path);
}