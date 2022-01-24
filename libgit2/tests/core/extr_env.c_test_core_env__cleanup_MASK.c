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
 int NUM_VARS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** env_save ; 
 int /*<<< orphan*/ * env_vars ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char** home_values ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	int i;
	char **val;

	for (i = 0; i < NUM_VARS; ++i) {
		FUNC1(env_vars[i], env_save[i]);
		FUNC2(env_save[i]);
		env_save[i] = NULL;
	}

	/* these will probably have already been cleaned up, but if a test
	 * fails, then it's probably good to try and clear out these dirs
	 */
	for (val = home_values; *val != NULL; val++) {
		if (**val != '\0')
			(void)FUNC3(*val);
	}

	FUNC0();
}