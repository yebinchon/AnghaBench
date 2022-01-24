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
struct TYPE_3__ {int programStack; int (* systemCall ) (intptr_t*) ;scalar_t__ dataBase; } ;
typedef  TYPE_1__ vm_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (intptr_t*) ; 
 int MAX_VMSYSCALL_ARGS ; 
 TYPE_1__* currentVM ; 
 int FUNC1 (intptr_t*) ; 
 int FUNC2 (intptr_t*) ; 

__attribute__((used)) static int FUNC3(int call, int pstack)
{
	// save currentVM so as to allow for recursive VM entry
	vm_t *savedVM = currentVM;
	int i, ret;

	// modify VM stack pointer for recursive VM entry
	currentVM->programStack = pstack - 4;

	if (sizeof(intptr_t) == sizeof(int)) {
		intptr_t *argPosition = (intptr_t *)((byte *)currentVM->dataBase + pstack + 4);
		argPosition[0] = -1 - call;
		ret = currentVM->systemCall(argPosition);
	} else {
		intptr_t args[MAX_VMSYSCALL_ARGS];

		args[0] = -1 - call;
		int *argPosition = (int *)((byte *)currentVM->dataBase + pstack + 4);
		for( i = 1; i < FUNC0(args); i++ )
			args[i] = argPosition[i];

		ret = currentVM->systemCall(args);
	}

	currentVM = savedVM;

	return ret;
}