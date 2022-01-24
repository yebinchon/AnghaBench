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
 int /*<<< orphan*/  TR2_DOTS_BUFFER_SIZE ; 
 int /*<<< orphan*/  TR2_SYSENV_PERF_BRIEF ; 
 int /*<<< orphan*/  dots ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tr2dst_perf ; 
 int tr2env_perf_be_brief ; 

__attribute__((used)) static int FUNC4(void)
{
	int want = FUNC2(&tr2dst_perf);
	int want_brief;
	const char *brief;

	if (!want)
		return want;

	FUNC1(&dots, '.', TR2_DOTS_BUFFER_SIZE);

	brief = FUNC3(TR2_SYSENV_PERF_BRIEF);
	if (brief && *brief &&
	    ((want_brief = FUNC0(brief)) != -1))
		tr2env_perf_be_brief = want_brief;

	return want;
}