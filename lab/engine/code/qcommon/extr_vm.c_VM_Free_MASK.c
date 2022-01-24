#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ instructionPointers; scalar_t__ dataBase; scalar_t__ codeBase; scalar_t__ dllHandle; int /*<<< orphan*/  (* destroy ) (TYPE_1__*) ;int /*<<< orphan*/  name; scalar_t__ callLevel; } ;
typedef  TYPE_1__ vm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * currentVM ; 
 int /*<<< orphan*/  forced_unload ; 
 int /*<<< orphan*/ * lastVM ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6( vm_t *vm ) {

	if(!vm) {
		return;
	}

	if(vm->callLevel) {
		if(!forced_unload) {
			FUNC0( ERR_FATAL, "VM_Free(%s) on running vm", vm->name );
			return;
		} else {
			FUNC2( "forcefully unloading %s vm\n", vm->name );
		}
	}

	if(vm->destroy)
		vm->destroy(vm);

	if ( vm->dllHandle ) {
		FUNC3( vm->dllHandle );
		FUNC1( vm, 0, sizeof( *vm ) );
	}
#if 0	// now automatically freed by hunk
	if ( vm->codeBase ) {
		Z_Free( vm->codeBase );
	}
	if ( vm->dataBase ) {
		Z_Free( vm->dataBase );
	}
	if ( vm->instructionPointers ) {
		Z_Free( vm->instructionPointers );
	}
#endif
	FUNC1( vm, 0, sizeof( *vm ) );

	currentVM = NULL;
	lastVM = NULL;
}