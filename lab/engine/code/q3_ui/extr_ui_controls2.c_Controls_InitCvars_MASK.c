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
struct TYPE_3__ {void* value; int /*<<< orphan*/  name; void* defaultvalue; } ;
typedef  TYPE_1__ configcvar_t ;

/* Variables and functions */
 TYPE_1__* g_configcvars ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( void )
{
	int				i;
	configcvar_t*	cvarptr;

	cvarptr = g_configcvars;
	for (i=0; ;i++,cvarptr++)
	{
		if (!cvarptr->name)
			break;

		// get current value
		cvarptr->value = FUNC2( cvarptr->name );

		// get default value
		FUNC0( cvarptr->name );
		cvarptr->defaultvalue = FUNC2( cvarptr->name );

		// restore current value
		FUNC1( cvarptr->name, cvarptr->value );
	}
}