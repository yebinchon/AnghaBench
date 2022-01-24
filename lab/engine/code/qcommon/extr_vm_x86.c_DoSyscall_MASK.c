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
struct TYPE_3__ {int (* systemCall ) (intptr_t*) ;scalar_t__ dataBase; scalar_t__ programStack; } ;
typedef  TYPE_1__ vm_t ;

/* Variables and functions */
 int FUNC0 (intptr_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_VMSYSCALL_ARGS ; 
#define  VM_BLOCK_COPY 129 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
#define  VM_JMP_VIOLATION 128 
 TYPE_1__* currentVM ; 
 int FUNC4 (intptr_t*) ; 
 int FUNC5 (intptr_t*) ; 
 int /*<<< orphan*/  vm_arg ; 
 int* vm_opStackBase ; 
 int vm_opStackOfs ; 
 scalar_t__ vm_programStack ; 
 int vm_syscallNum ; 

__attribute__((used)) static void FUNC6(void)
{
	vm_t *savedVM;

	// save currentVM so as to allow for recursive VM entry
	savedVM = currentVM;
	// modify VM stack pointer for recursive VM entry
	currentVM->programStack = vm_programStack - 4;

	if(vm_syscallNum < 0)
	{
		int *data, *ret;
#if idx64
		int index;
		intptr_t args[MAX_VMSYSCALL_ARGS];
#endif
		
		data = (int *) (savedVM->dataBase + vm_programStack + 4);
		ret = &vm_opStackBase[vm_opStackOfs + 1];

#if idx64
		args[0] = ~vm_syscallNum;
		for(index = 1; index < ARRAY_LEN(args); index++)
			args[index] = data[index];
			
		*ret = savedVM->systemCall(args);
#else
		data[0] = ~vm_syscallNum;
		*ret = savedVM->systemCall((intptr_t *) data);
#endif
	}
	else
	{
		switch(vm_syscallNum)
		{
		case VM_JMP_VIOLATION:
			FUNC2();
		break;
		case VM_BLOCK_COPY: 
			if(vm_opStackOfs < 1)
				FUNC1(ERR_DROP, "VM_BLOCK_COPY failed due to corrupted opStack");
			
			FUNC3(vm_opStackBase[(vm_opStackOfs - 1)], vm_opStackBase[vm_opStackOfs], vm_arg);
		break;
		default:
			FUNC1(ERR_DROP, "Unknown VM operation %d", vm_syscallNum);
		break;
		}
	}

	currentVM = savedVM;
}