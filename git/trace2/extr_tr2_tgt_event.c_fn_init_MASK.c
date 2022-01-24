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
 int /*<<< orphan*/  TR2_SYSENV_EVENT_BRIEF ; 
 int /*<<< orphan*/  TR2_SYSENV_EVENT_NESTING ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tr2dst_event ; 
 int tr2env_event_be_brief ; 
 int tr2env_event_max_nesting_levels ; 

__attribute__((used)) static int FUNC4(void)
{
	int want = FUNC2(&tr2dst_event);
	int max_nesting;
	int want_brief;
	const char *nesting;
	const char *brief;

	if (!want)
		return want;

	nesting = FUNC3(TR2_SYSENV_EVENT_NESTING);
	if (nesting && *nesting && ((max_nesting = FUNC0(nesting)) > 0))
		tr2env_event_max_nesting_levels = max_nesting;

	brief = FUNC3(TR2_SYSENV_EVENT_BRIEF);
	if (brief && *brief &&
	    ((want_brief = FUNC1(brief)) != -1))
		tr2env_event_be_brief = want_brief;

	return want;
}