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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void)
{
	git_buf target_path = GIT_BUF_INIT;
	int len;
	char buf[2048];

	if (!FUNC9())
		FUNC2();

	FUNC7(&target_path, '/', FUNC3(), "readlink_nonexistent");

	FUNC4(FUNC5(&target_path), "readlink_dangling", 0);

	len = FUNC8("readlink_dangling", buf, 2048);
	FUNC1(len);

	buf[len] = 0;

	FUNC0(FUNC5(&target_path), buf);

	FUNC6(&target_path);
}