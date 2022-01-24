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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 size_t BPF_REG_1 ; 
 size_t BPF_REG_FP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  IA32_EAX ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_EBX ; 
 int PROLOGUE_SIZE ; 
 scalar_t__ SCRATCH_SIZE ; 
 int /*<<< orphan*/  STACK_SIZE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 size_t TCALL_CNT ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** bpf2ia32 ; 

__attribute__((used)) static void FUNC8(u8 **pprog, u32 stack_depth)
{
	u8 *prog = *pprog;
	int cnt = 0;
	const u8 *r1 = bpf2ia32[BPF_REG_1];
	const u8 fplo = bpf2ia32[BPF_REG_FP][0];
	const u8 fphi = bpf2ia32[BPF_REG_FP][1];
	const u8 *tcc = bpf2ia32[TCALL_CNT];

	/* push ebp */
	FUNC1(0x55);
	/* mov ebp,esp */
	FUNC2(0x89, 0xE5);
	/* push edi */
	FUNC1(0x57);
	/* push esi */
	FUNC1(0x56);
	/* push ebx */
	FUNC1(0x53);

	/* sub esp,STACK_SIZE */
	FUNC3(0x81, 0xEC, STACK_SIZE);
	/* sub ebp,SCRATCH_SIZE+12*/
	FUNC4(0x83, FUNC6(0xE8, IA32_EBP), SCRATCH_SIZE + 12);
	/* xor ebx,ebx */
	FUNC2(0x31, FUNC7(0xC0, IA32_EBX, IA32_EBX));

	/* Set up BPF prog stack base register */
	FUNC4(0x89, FUNC7(0x40, IA32_EBP, IA32_EBP), FUNC5(fplo));
	FUNC4(0x89, FUNC7(0x40, IA32_EBP, IA32_EBX), FUNC5(fphi));

	/* Move BPF_CTX (EAX) to BPF_REG_R1 */
	/* mov dword ptr [ebp+off],eax */
	FUNC4(0x89, FUNC7(0x40, IA32_EBP, IA32_EAX), FUNC5(r1[0]));
	FUNC4(0x89, FUNC7(0x40, IA32_EBP, IA32_EBX), FUNC5(r1[1]));

	/* Initialize Tail Count */
	FUNC4(0x89, FUNC7(0x40, IA32_EBP, IA32_EBX), FUNC5(tcc[0]));
	FUNC4(0x89, FUNC7(0x40, IA32_EBP, IA32_EBX), FUNC5(tcc[1]));

	FUNC0(cnt != PROLOGUE_SIZE);
	*pprog = prog;
}