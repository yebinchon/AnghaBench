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

char *FUNC2(char *envname)
{
	char **env = prom_envp;
	int i;

	i = FUNC0(envname);

	while (*env) {
		if (FUNC1(envname, *env, i) == 0 && *(*env + i) == '=')
			return *env + i + 1;
		env++;
	}

	return 0;
}