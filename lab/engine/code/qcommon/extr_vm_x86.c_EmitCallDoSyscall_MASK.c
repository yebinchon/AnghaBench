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
typedef  int /*<<< orphan*/  vm_t ;

/* Variables and functions */
 int /*<<< orphan*/ * DoSyscall ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int compiledOfs ; 
 int /*<<< orphan*/  vm_arg ; 
 int /*<<< orphan*/  vm_opStackBase ; 
 int /*<<< orphan*/  vm_opStackOfs ; 
 int /*<<< orphan*/  vm_programStack ; 
 int /*<<< orphan*/  vm_syscallNum ; 

int FUNC3(vm_t *vm)
{
	// use edx register to store DoSyscall address
	FUNC1(0x48, "BA");		// mov edx, DoSyscall
	FUNC0(DoSyscall);

	// Push important registers to stack as we can't really make
	// any assumptions about calling conventions.
	FUNC2("51");			// push ebx
	FUNC2("56");			// push esi
	FUNC2("57");			// push edi
#if idx64
	EmitRexString(0x41, "50");		// push r8
	EmitRexString(0x41, "51");		// push r9
#endif

	// write arguments to global vars
	// syscall number
	FUNC2("A3");			// mov [0x12345678], eax
	FUNC0(&vm_syscallNum);
	// vm_programStack value
	FUNC2("89 F0");			// mov eax, esi
	FUNC2("A3");			// mov [0x12345678], eax
	FUNC0(&vm_programStack);
	// vm_opStackOfs 
	FUNC2("88 D8");			// mov al, bl
	FUNC2("A2");			// mov [0x12345678], al
	FUNC0(&vm_opStackOfs);
	// vm_opStackBase
	FUNC1(0x48, "89 F8");		// mov eax, edi
	FUNC1(0x48, "A3");		// mov [0x12345678], eax
	FUNC0(&vm_opStackBase);
	// vm_arg
	FUNC2("89 C8");			// mov eax, ecx
	FUNC2("A3");			// mov [0x12345678], eax
	FUNC0(&vm_arg);
	
	// align the stack pointer to a 16-byte-boundary
	FUNC2("55");			// push ebp
	FUNC1(0x48, "89 E5");		// mov ebp, esp
	FUNC1(0x48, "83 E4 F0");	// and esp, 0xFFFFFFF0
			
	// call the syscall wrapper function DoSyscall()

	FUNC2("FF D2");			// call edx

	// reset the stack pointer to its previous value
	FUNC1(0x48, "89 EC");		// mov esp, ebp
	FUNC2("5D");			// pop ebp

#if idx64
	EmitRexString(0x41, "59");		// pop r9
	EmitRexString(0x41, "58");		// pop r8
#endif
	FUNC2("5F");			// pop edi
	FUNC2("5E");			// pop esi
	FUNC2("59");			// pop ebx

	FUNC2("C3");			// ret

	return compiledOfs;
}