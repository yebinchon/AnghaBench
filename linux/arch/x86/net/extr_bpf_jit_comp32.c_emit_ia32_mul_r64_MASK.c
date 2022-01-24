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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IA32_EAX ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_ECX ; 
 int /*<<< orphan*/  IA32_EDX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 
 int /*<<< orphan*/  src_hi ; 
 int /*<<< orphan*/  src_lo ; 

__attribute__((used)) static inline void FUNC5(const u8 dst[], const u8 src[], bool dstk,
				     bool sstk, u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;

	if (dstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_EAX),
		      FUNC2(dst_hi));
	else
		/* mov eax,dst_hi */
		FUNC0(0x8B, FUNC4(0xC0, dst_hi, IA32_EAX));

	if (sstk)
		/* mul dword ptr [ebp+off] */
		FUNC1(0xF7, FUNC3(0x60, IA32_EBP), FUNC2(src_lo));
	else
		/* mul src_lo */
		FUNC0(0xF7, FUNC3(0xE0, src_lo));

	/* mov ecx,eax */
	FUNC0(0x89, FUNC4(0xC0, IA32_ECX, IA32_EAX));

	if (dstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_EAX),
		      FUNC2(dst_lo));
	else
		/* mov eax,dst_lo */
		FUNC0(0x8B, FUNC4(0xC0, dst_lo, IA32_EAX));

	if (sstk)
		/* mul dword ptr [ebp+off] */
		FUNC1(0xF7, FUNC3(0x60, IA32_EBP), FUNC2(src_hi));
	else
		/* mul src_hi */
		FUNC0(0xF7, FUNC3(0xE0, src_hi));

	/* add eax,eax */
	FUNC0(0x01, FUNC4(0xC0, IA32_ECX, IA32_EAX));

	if (dstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_EAX),
		      FUNC2(dst_lo));
	else
		/* mov eax,dst_lo */
		FUNC0(0x8B, FUNC4(0xC0, dst_lo, IA32_EAX));

	if (sstk)
		/* mul dword ptr [ebp+off] */
		FUNC1(0xF7, FUNC3(0x60, IA32_EBP), FUNC2(src_lo));
	else
		/* mul src_lo */
		FUNC0(0xF7, FUNC3(0xE0, src_lo));

	/* add ecx,edx */
	FUNC0(0x01, FUNC4(0xC0, IA32_ECX, IA32_EDX));

	if (dstk) {
		/* mov dword ptr [ebp+off],eax */
		FUNC1(0x89, FUNC4(0x40, IA32_EBP, IA32_EAX),
		      FUNC2(dst_lo));
		/* mov dword ptr [ebp+off],ecx */
		FUNC1(0x89, FUNC4(0x40, IA32_EBP, IA32_ECX),
		      FUNC2(dst_hi));
	} else {
		/* mov dst_lo,eax */
		FUNC0(0x89, FUNC4(0xC0, dst_lo, IA32_EAX));
		/* mov dst_hi,ecx */
		FUNC0(0x89, FUNC4(0xC0, dst_hi, IA32_ECX));
	}

	*pprog = prog;
}