#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_USER_CREATED ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(void)
{
	cvar_t *cv;
	
	if(FUNC0() != 2)
	{
		FUNC2("Usage: %s <varname>\n", FUNC1(0));
		return;
	}
	
	cv = FUNC3(FUNC1(1));

	if(!cv)
		return;
	
	if(cv->flags & CVAR_USER_CREATED)
		FUNC4(cv);
	else
		FUNC2("Error: %s: Variable %s is not user created.\n", FUNC1(0), cv->name);
}