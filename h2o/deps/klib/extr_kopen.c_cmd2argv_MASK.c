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
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static char **FUNC4(const char *cmd)
{
	int i, beg, end, argc;
	char **argv, *p, *q, *str;
	end = FUNC2(cmd);
	for (i = end - 1; i >= 0; --i)
		if (!FUNC1(cmd[i])) break;
	end = i + 1;
	for (beg = 0; beg < end; ++beg)
		if (!FUNC1(cmd[beg])) break;
	if (beg == end) return 0;
	for (i = beg + 1, argc = 0; i < end; ++i)
		if (FUNC1(cmd[i]) && !FUNC1(cmd[i-1]))
			++argc;
	argv = (char**)FUNC0(argc + 2, sizeof(void*));
	argv[0] = str = (char*)FUNC0(end - beg + 1, 1);
	FUNC3(argv[0], cmd + beg, end - beg);
	for (i = argc = 1, q = p = str; i < end - beg; ++i)
		if (FUNC1(str[i])) str[i] = 0;
		else if (str[i] && str[i-1] == 0) argv[argc++] = &str[i];
	return argv;
}