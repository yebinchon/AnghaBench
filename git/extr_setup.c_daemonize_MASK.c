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
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 

int FUNC7(void)
{
#ifdef NO_POSIX_GOODIES
	errno = ENOSYS;
	return -1;
#else
	switch (FUNC4()) {
		case 0:
			break;
		case -1:
			FUNC2(FUNC0("fork failed"));
		default:
			FUNC3(0);
	}
	if (FUNC6() == -1)
		FUNC2(FUNC0("setsid failed"));
	FUNC1(0);
	FUNC1(1);
	FUNC1(2);
	FUNC5();
	return 0;
#endif
}