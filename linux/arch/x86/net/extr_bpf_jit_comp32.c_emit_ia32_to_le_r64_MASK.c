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
struct bpf_prog_aux {int /*<<< orphan*/  verifier_zext; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IA32_EAX ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_EDX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 

__attribute__((used)) static inline void FUNC5(const u8 dst[], s32 val,
					 bool dstk, u8 **pprog,
					 const struct bpf_prog_aux *aux)
{
	u8 *prog = *pprog;
	int cnt = 0;
	u8 dreg_lo = dstk ? IA32_EAX : dst_lo;
	u8 dreg_hi = dstk ? IA32_EDX : dst_hi;

	if (dstk && val != 64) {
		FUNC2(0x8B, FUNC4(0x40, IA32_EBP, IA32_EAX),
		      FUNC3(dst_lo));
		FUNC2(0x8B, FUNC4(0x40, IA32_EBP, IA32_EDX),
		      FUNC3(dst_hi));
	}
	switch (val) {
	case 16:
		/*
		 * Emit 'movzwl eax,ax' to zero extend 16-bit
		 * into 64 bit
		 */
		FUNC1(0x0F, 0xB7);
		FUNC0(FUNC4(0xC0, dreg_lo, dreg_lo));
		if (!aux->verifier_zext)
			/* xor dreg_hi,dreg_hi */
			FUNC1(0x33, FUNC4(0xC0, dreg_hi, dreg_hi));
		break;
	case 32:
		if (!aux->verifier_zext)
			/* xor dreg_hi,dreg_hi */
			FUNC1(0x33, FUNC4(0xC0, dreg_hi, dreg_hi));
		break;
	case 64:
		/* nop */
		break;
	}

	if (dstk && val != 64) {
		/* mov dword ptr [ebp+off],dreg_lo */
		FUNC2(0x89, FUNC4(0x40, IA32_EBP, dreg_lo),
		      FUNC3(dst_lo));
		/* mov dword ptr [ebp+off],dreg_hi */
		FUNC2(0x89, FUNC4(0x40, IA32_EBP, dreg_hi),
		      FUNC3(dst_hi));
	}
	*pprog = prog;
}