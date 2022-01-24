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
typedef  int /*<<< orphan*/  git_filebuf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char*,int) ; 
 int FUNC7 (char*) ; 

void FUNC8(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	int fd;
	char test[] = "test", testlock[] = "test.lock";

	fd = FUNC6(testlock, 0744); /* -V536 */

	FUNC2(fd);
	FUNC2(FUNC5(fd));

	FUNC1(FUNC3(&file, test, 0, 0666));
	FUNC0(FUNC4(testlock));

	FUNC2(FUNC7(testlock));
}