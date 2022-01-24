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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char) ; 
 int FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(void)
{
	git_buf a = GIT_BUF_INIT;
	ssize_t len;

	FUNC1(FUNC6(&a, "/this/is/it/"));

	len = (ssize_t)FUNC3(&a);

	FUNC0(FUNC4(&a, '/') == len - 1);
	FUNC0(FUNC5(&a, '/') == len - 4);

	FUNC0(FUNC4(&a, 'i') == len - 3);
	FUNC0(FUNC5(&a, 'i') == len - 3);

	FUNC0(FUNC4(&a, 'h') == 2);
	FUNC0(FUNC5(&a, 'h') == 2);

	FUNC0(FUNC4(&a, 'q') == -1);
	FUNC0(FUNC5(&a, 'q') == -1);

	FUNC2(&a);
}