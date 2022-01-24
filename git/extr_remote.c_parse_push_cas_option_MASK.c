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
struct push_cas_option {int use_tracking_for_rest; } ;
struct push_cas {int use_tracking; int /*<<< orphan*/  expect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct push_cas* FUNC1 (struct push_cas_option*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct push_cas_option*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(struct push_cas_option *cas, const char *arg, int unset)
{
	const char *colon;
	struct push_cas *entry;

	if (unset) {
		/* "--no-<option>" */
		FUNC2(cas);
		return 0;
	}

	if (!arg) {
		/* just "--<option>" */
		cas->use_tracking_for_rest = 1;
		return 0;
	}

	/* "--<option>=refname" or "--<option>=refname:value" */
	colon = FUNC6(arg, ':');
	entry = FUNC1(cas, arg, colon - arg);
	if (!*colon)
		entry->use_tracking = 1;
	else if (!colon[1])
		FUNC5(&entry->expect);
	else if (FUNC4(colon + 1, &entry->expect))
		return FUNC3(FUNC0("cannot parse expected object name '%s'"),
			     colon + 1);
	return 0;
}