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
struct TYPE_5__ {intptr_t instructionCount; scalar_t__ instructionPointers; } ;
typedef  TYPE_1__ vm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (intptr_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int compiledOfs ; 

int FUNC8(vm_t *vm, int sysCallOfs)
{
	int jmpSystemCall, jmpBadAddr;
	int retval;

	FUNC4("8B 04 9F");		// mov eax, dword ptr [edi + ebx * 4]
	FUNC6(1);			// sub bl, 1
	FUNC4("85 C0");		// test eax, eax

	// Jump to syscall code, 1 byte offset should suffice
	FUNC4("7C");		// jl systemCall
	jmpSystemCall = compiledOfs++;
		
	/************ Call inside VM ************/
	
	FUNC4("81 F8");		// cmp eax, vm->instructionCount
	FUNC0(vm->instructionCount);
		
	// Error jump if invalid jump target
	FUNC4("73");		// jae badAddr
	jmpBadAddr = compiledOfs++;

#if idx64
	EmitRexString(0x49, "FF 14 C0");	// call qword ptr [r8 + eax * 8]
#else
	FUNC4("FF 14 85");			// call dword ptr [vm->instructionPointers + eax * 4]
	FUNC0((intptr_t) vm->instructionPointers);
#endif
	FUNC4("8B 04 9F");			// mov eax, dword ptr [edi + ebx * 4]
	FUNC4("C3");			// ret
		
	// badAddr:
	FUNC5(jmpBadAddr);
	FUNC1(vm, sysCallOfs);

	/************ System Call ************/
	
	// systemCall:
	FUNC5(jmpSystemCall);
	retval = compiledOfs;

	FUNC2(vm, sysCallOfs);

	// have opStack reg point at return value
	FUNC7(1);			// add bl, 1
	FUNC4("C3");		// ret

	return retval;
}