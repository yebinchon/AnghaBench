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
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*,char) ; 

int FUNC8(const char *in, char **out)
{
	char *name, *fdot, *ldot;

	FUNC1(in && out);

	name = FUNC3(in);
	FUNC0(name);

	fdot = FUNC6(name, '.');
	ldot = FUNC7(name, '.');

	if (fdot == NULL || fdot == name || ldot == NULL || !ldot[1])
		goto invalid;

	/* Validate and downcase up to first dot and after last dot */
	if (FUNC5(name, fdot) < 0 ||
	    FUNC5(ldot + 1, NULL) < 0)
		goto invalid;

	/* If there is a middle range, make sure it doesn't have newlines */
	while (fdot < ldot)
		if (*fdot++ == '\n')
			goto invalid;

	*out = name;
	return 0;

invalid:
	FUNC2(name);
	FUNC4(GIT_ERROR_CONFIG, "invalid config item name '%s'", in);
	return GIT_EINVALIDSPEC;
}