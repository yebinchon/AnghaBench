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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ const BPF_MOD ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ const IA32_EAX ; 
 scalar_t__ const IA32_EBP ; 
 scalar_t__ const IA32_ECX ; 
 scalar_t__ const IA32_EDX ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__ const,scalar_t__ const) ; 

__attribute__((used)) static inline void FUNC5(const u8 op, const u8 dst, const u8 src,
				       bool dstk, bool sstk, u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;

	if (sstk)
		/* mov ecx,dword ptr [ebp+off] */
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_ECX),
		      FUNC2(src));
	else if (src != IA32_ECX)
		/* mov ecx,src */
		FUNC0(0x8B, FUNC4(0xC0, src, IA32_ECX));

	if (dstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_EAX),
		      FUNC2(dst));
	else
		/* mov eax,dst */
		FUNC0(0x8B, FUNC4(0xC0, dst, IA32_EAX));

	/* xor edx,edx */
	FUNC0(0x31, FUNC4(0xC0, IA32_EDX, IA32_EDX));
	/* div ecx */
	FUNC0(0xF7, FUNC3(0xF0, IA32_ECX));

	if (op == BPF_MOD) {
		if (dstk)
			FUNC1(0x89, FUNC4(0x40, IA32_EBP, IA32_EDX),
			      FUNC2(dst));
		else
			FUNC0(0x89, FUNC4(0xC0, dst, IA32_EDX));
	} else {
		if (dstk)
			FUNC1(0x89, FUNC4(0x40, IA32_EBP, IA32_EAX),
			      FUNC2(dst));
		else
			FUNC0(0x89, FUNC4(0xC0, dst, IA32_EAX));
	}
	*pprog = prog;
}