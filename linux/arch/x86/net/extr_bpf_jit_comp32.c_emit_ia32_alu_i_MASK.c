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
typedef  int u8 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
#define  BPF_ADD 133 
#define  BPF_AND 132 
#define  BPF_NEG 131 
#define  BPF_OR 130 
#define  BPF_SUB 129 
#define  BPF_XOR 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int const IA32_EAX ; 
 int IA32_EBP ; 
 int IA32_EDX ; 
 int /*<<< orphan*/  const FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline void FUNC7(const bool is64, const bool hi, const u8 op,
				   const u8 dst, const s32 val, bool dstk,
				   u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;
	u8 dreg = dstk ? IA32_EAX : dst;
	u8 sreg = IA32_EDX;

	if (dstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC2(0x8B, FUNC5(0x40, IA32_EBP, IA32_EAX), FUNC3(dst));

	if (!FUNC6(val))
		/* mov edx,imm32*/
		FUNC1(0xC7, FUNC4(0xC0, IA32_EDX), val);

	switch (op) {
	/* dst = dst + val */
	case BPF_ADD:
		if (hi && is64) {
			if (FUNC6(val))
				FUNC2(0x83, FUNC4(0xD0, dreg), val);
			else
				FUNC0(0x11, FUNC5(0xC0, dreg, sreg));
		} else {
			if (FUNC6(val))
				FUNC2(0x83, FUNC4(0xC0, dreg), val);
			else
				FUNC0(0x01, FUNC5(0xC0, dreg, sreg));
		}
		break;
	/* dst = dst - val */
	case BPF_SUB:
		if (hi && is64) {
			if (FUNC6(val))
				FUNC2(0x83, FUNC4(0xD8, dreg), val);
			else
				FUNC0(0x19, FUNC5(0xC0, dreg, sreg));
		} else {
			if (FUNC6(val))
				FUNC2(0x83, FUNC4(0xE8, dreg), val);
			else
				FUNC0(0x29, FUNC5(0xC0, dreg, sreg));
		}
		break;
	/* dst = dst | val */
	case BPF_OR:
		if (FUNC6(val))
			FUNC2(0x83, FUNC4(0xC8, dreg), val);
		else
			FUNC0(0x09, FUNC5(0xC0, dreg, sreg));
		break;
	/* dst = dst & val */
	case BPF_AND:
		if (FUNC6(val))
			FUNC2(0x83, FUNC4(0xE0, dreg), val);
		else
			FUNC0(0x21, FUNC5(0xC0, dreg, sreg));
		break;
	/* dst = dst ^ val */
	case BPF_XOR:
		if (FUNC6(val))
			FUNC2(0x83, FUNC4(0xF0, dreg), val);
		else
			FUNC0(0x31, FUNC5(0xC0, dreg, sreg));
		break;
	case BPF_NEG:
		FUNC0(0xF7, FUNC4(0xD8, dreg));
		break;
	}

	if (dstk)
		/* mov dword ptr [ebp+off],dreg */
		FUNC2(0x89, FUNC5(0x40, IA32_EBP, dreg),
		      FUNC3(dst));
	*pprog = prog;
}