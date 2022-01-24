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
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  IA32_EAX ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_EDX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 

__attribute__((used)) static inline void FUNC6(const u8 dst[], const u32 val,
				     bool dstk, u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;
	u8 dreg_lo = dstk ? IA32_EAX : dst_lo;
	u8 dreg_hi = dstk ? IA32_EDX : dst_hi;

	if (dstk) {
		FUNC1(0x8B, FUNC5(0x40, IA32_EBP, IA32_EAX),
		      FUNC3(dst_lo));
		FUNC1(0x8B, FUNC5(0x40, IA32_EBP, IA32_EDX),
		      FUNC3(dst_hi));
	}
	/* Do LSH operation */
	if (val < 32) {
		/* shld dreg_hi,dreg_lo,imm8 */
		FUNC2(0x0F, 0xA4, FUNC5(0xC0, dreg_hi, dreg_lo), val);
		/* shl dreg_lo,imm8 */
		FUNC1(0xC1, FUNC4(0xE0, dreg_lo), val);
	} else if (val >= 32 && val < 64) {
		u32 value = val - 32;

		/* shl dreg_lo,imm8 */
		FUNC1(0xC1, FUNC4(0xE0, dreg_lo), value);
		/* mov dreg_hi,dreg_lo */
		FUNC0(0x89, FUNC5(0xC0, dreg_hi, dreg_lo));
		/* xor dreg_lo,dreg_lo */
		FUNC0(0x33, FUNC5(0xC0, dreg_lo, dreg_lo));
	} else {
		/* xor dreg_lo,dreg_lo */
		FUNC0(0x33, FUNC5(0xC0, dreg_lo, dreg_lo));
		/* xor dreg_hi,dreg_hi */
		FUNC0(0x33, FUNC5(0xC0, dreg_hi, dreg_hi));
	}

	if (dstk) {
		/* mov dword ptr [ebp+off],dreg_lo */
		FUNC1(0x89, FUNC5(0x40, IA32_EBP, dreg_lo),
		      FUNC3(dst_lo));
		/* mov dword ptr [ebp+off],dreg_hi */
		FUNC1(0x89, FUNC5(0x40, IA32_EBP, dreg_hi),
		      FUNC3(dst_hi));
	}
	*pprog = prog;
}