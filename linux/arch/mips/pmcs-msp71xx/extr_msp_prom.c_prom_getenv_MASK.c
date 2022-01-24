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
 char** prom_envp ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

char *FUNC2(char *env_name)
{
	/*
	 * Return a pointer to the given environment variable.	prom_envp
	 * points to a null terminated array of pointers to variables.
	 * Environment variables are stored in the form of "memsize=64"
	 */

	char **var = prom_envp;
	int i = FUNC0(env_name);

	while (*var) {
		if (FUNC1(env_name, *var, i) == 0) {
			return *var + FUNC0(env_name) + 1;
		}
		var++;
	}

	return NULL;
}