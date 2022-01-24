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
 int /*<<< orphan*/  EXEC_PATH_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_EXEC_PATH ; 
 char const* exec_path_value ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 

const char *FUNC3(void)
{
	if (!exec_path_value) {
		const char *env = FUNC0(EXEC_PATH_ENVIRONMENT);
		if (env && *env)
			exec_path_value = FUNC2(env);
		else
			exec_path_value = FUNC1(GIT_EXEC_PATH);
	}
	return exec_path_value;
}