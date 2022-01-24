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
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 

void FUNC6(void)
{
	int argc = FUNC0();
	char *arg1 = FUNC2(1);

	if(argc > 2)
	{
		char *arg2 = FUNC1(2);
		
		FUNC4(arg1, arg2);
	}
	else if(argc == 2)
	{
		char *env = FUNC5(arg1);
		
		if(env)
			FUNC3("%s=%s\n", arg1, env);
		else
			FUNC3("%s undefined\n", arg1);
        }
}