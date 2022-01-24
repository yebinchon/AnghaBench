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
typedef  int /*<<< orphan*/  cvar_t ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	char *name;
	cvar_t *cv;
	
	if(FUNC0() != 2)
	{
		FUNC2 ("usage: print <variable>\n");
		return;
	}

	name = FUNC1(1);

	cv = FUNC3(name);
	
	if(cv)
		FUNC4(cv);
	else
		FUNC2 ("Cvar %s does not exist.\n", name);
}