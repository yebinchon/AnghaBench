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
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  regex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	char c, str[2];

#ifdef GIT_WIN32
	cl_skip();
#endif

	FUNC4(LC_COLLATE);
	FUNC4(LC_CTYPE);

	FUNC0(FUNC2(&regex, "[[:digit:]]", 0));

	str[1] = '\0';
	for (c = '0'; c <= '9'; c++) {
	    str[0] = c;
	    FUNC0(FUNC3(&regex, str));
	}
}