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
 scalar_t__ charset ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (scalar_t__) ; 
 char* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*) ; 

int FUNC4(void)
{
#ifdef NO_GETTEXT
	if (!charset) {
		const char *env = getenv("LC_ALL");
		if (!env || !*env)
			env = getenv("LC_CTYPE");
		if (!env || !*env)
			env = getenv("LANG");
		if (!env)
			env = "";
		if (strchr(env, '.'))
			env = strchr(env, '.') + 1;
		charset = xstrdup(env);
	}
#endif
	return FUNC1(charset);
}