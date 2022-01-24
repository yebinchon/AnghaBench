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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IA32_EAX ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_ECX ; 
 int /*<<< orphan*/  IA32_EDX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 

__attribute__((used)) static inline void FUNC6(const u8 dst[], const u32 val,
				     bool dstk, u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;
	u32 hi;

	hi = val & (1<<31) ? (u32)~0 : 0;
	/* movl eax,imm32 */
	FUNC1(0xC7, FUNC4(0xC0, IA32_EAX), val);
	if (dstk)
		/* mul dword ptr [ebp+off] */
		FUNC2(0xF7, FUNC4(0x60, IA32_EBP), FUNC3(dst_hi));
	else
		/* mul dst_hi */
		FUNC0(0xF7, FUNC4(0xE0, dst_hi));

	/* mov ecx,eax */
	FUNC0(0x89, FUNC5(0xC0, IA32_ECX, IA32_EAX));

	/* movl eax,imm32 */
	FUNC1(0xC7, FUNC4(0xC0, IA32_EAX), hi);
	if (dstk)
		/* mul dword ptr [ebp+off] */
		FUNC2(0xF7, FUNC4(0x60, IA32_EBP), FUNC3(dst_lo));
	else
		/* mul dst_lo */
		FUNC0(0xF7, FUNC4(0xE0, dst_lo));
	/* add ecx,eax */
	FUNC0(0x01, FUNC5(0xC0, IA32_ECX, IA32_EAX));

	/* movl eax,imm32 */
	FUNC1(0xC7, FUNC4(0xC0, IA32_EAX), val);
	if (dstk)
		/* mul dword ptr [ebp+off] */
		FUNC2(0xF7, FUNC4(0x60, IA32_EBP), FUNC3(dst_lo));
	else
		/* mul dst_lo */
		FUNC0(0xF7, FUNC4(0xE0, dst_lo));

	/* add ecx,edx */
	FUNC0(0x01, FUNC5(0xC0, IA32_ECX, IA32_EDX));

	if (dstk) {
		/* mov dword ptr [ebp+off],eax */
		FUNC2(0x89, FUNC5(0x40, IA32_EBP, IA32_EAX),
		      FUNC3(dst_lo));
		/* mov dword ptr [ebp+off],ecx */
		FUNC2(0x89, FUNC5(0x40, IA32_EBP, IA32_ECX),
		      FUNC3(dst_hi));
	} else {
		/* mov dword ptr [ebp+off],eax */
		FUNC0(0x89, FUNC5(0xC0, dst_lo, IA32_EAX));
		/* mov dword ptr [ebp+off],ecx */
		FUNC0(0x89, FUNC5(0xC0, dst_hi, IA32_ECX));
	}

	*pprog = prog;
}