#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {intptr_t (* systemCall ) (intptr_t*) ;int /*<<< orphan*/  name; scalar_t__ dllHandle; } ;
typedef  TYPE_1__ vm_t ;
typedef  int /*<<< orphan*/  vmHeader_t ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VMI_NATIVE ; 
 TYPE_1__* FUNC4 (char*,intptr_t (*) (intptr_t*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 

vm_t *FUNC7(vm_t *vm, qboolean unpure)
{
	vmHeader_t	*header;

	// DLL's can't be restarted in place
	if ( vm->dllHandle ) {
		char	name[MAX_QPATH];
		intptr_t	(*systemCall)( intptr_t *parms );
		
		systemCall = vm->systemCall;	
		FUNC3( name, vm->name, sizeof( name ) );

		FUNC5( vm );

		vm = FUNC4( name, systemCall, VMI_NATIVE );
		return vm;
	}

	// load the image
	FUNC1("VM_Restart()\n");

	if(!(header = FUNC6(vm, qfalse, unpure)))
	{
		FUNC0(ERR_DROP, "VM_Restart failed");
		return NULL;
	}

	// free the original file
	FUNC2(header);

	return vm;
}