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
typedef  int /*<<< orphan*/  const u8 ;

/* Variables and functions */
#define  BPF_ADD 132 
#define  BPF_AND 131 
 int FUNC0 (int /*<<< orphan*/  const) ; 
#define  BPF_OR 130 
#define  BPF_SUB 129 
#define  BPF_XOR 128 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const IA32_EAX ; 
 int /*<<< orphan*/  const IA32_EBP ; 
 int /*<<< orphan*/  const IA32_EDX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline void FUNC5(const bool is64, const bool hi, const u8 op,
				   const u8 dst, const u8 src, bool dstk,
				   bool sstk, u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;
	u8 sreg = sstk ? IA32_EAX : src;
	u8 dreg = dstk ? IA32_EDX : dst;

	if (sstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC2(0x8B, FUNC4(0x40, IA32_EBP, IA32_EAX), FUNC3(src));

	if (dstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC2(0x8B, FUNC4(0x40, IA32_EBP, IA32_EDX), FUNC3(dst));

	switch (FUNC0(op)) {
	/* dst = dst + src */
	case BPF_ADD:
		if (hi && is64)
			FUNC1(0x11, FUNC4(0xC0, dreg, sreg));
		else
			FUNC1(0x01, FUNC4(0xC0, dreg, sreg));
		break;
	/* dst = dst - src */
	case BPF_SUB:
		if (hi && is64)
			FUNC1(0x19, FUNC4(0xC0, dreg, sreg));
		else
			FUNC1(0x29, FUNC4(0xC0, dreg, sreg));
		break;
	/* dst = dst | src */
	case BPF_OR:
		FUNC1(0x09, FUNC4(0xC0, dreg, sreg));
		break;
	/* dst = dst & src */
	case BPF_AND:
		FUNC1(0x21, FUNC4(0xC0, dreg, sreg));
		break;
	/* dst = dst ^ src */
	case BPF_XOR:
		FUNC1(0x31, FUNC4(0xC0, dreg, sreg));
		break;
	}

	if (dstk)
		/* mov dword ptr [ebp+off],dreg */
		FUNC2(0x89, FUNC4(0x40, IA32_EBP, dreg),
		      FUNC3(dst));
	*pprog = prog;
}