#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; scalar_t__ modified; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_MODIFIED ; 
 int CVAR_NONEXISTENT ; 
 TYPE_1__* FUNC0 (char const*) ; 

int FUNC1(const char *var_name)
{
	cvar_t *var;
	
	if(!(var = FUNC0(var_name)))
		return CVAR_NONEXISTENT;
	else
	{
		if(var->modified)
			return var->flags | CVAR_MODIFIED;
		else
			return var->flags;
	}
}