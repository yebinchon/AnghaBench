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
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IA32_EAX ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_EDX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 

__attribute__((used)) static inline void FUNC5(const u8 dst[], bool dstk, u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;
	u8 dreg_lo = dstk ? IA32_EAX : dst_lo;
	u8 dreg_hi = dstk ? IA32_EDX : dst_hi;

	if (dstk) {
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_EAX),
		      FUNC2(dst_lo));
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_EDX),
		      FUNC2(dst_hi));
	}

	/* neg dreg_lo */
	FUNC0(0xF7, FUNC3(0xD8, dreg_lo));
	/* adc dreg_hi,0x0 */
	FUNC1(0x83, FUNC3(0xD0, dreg_hi), 0x00);
	/* neg dreg_hi */
	FUNC0(0xF7, FUNC3(0xD8, dreg_hi));

	if (dstk) {
		/* mov dword ptr [ebp+off],dreg_lo */
		FUNC1(0x89, FUNC4(0x40, IA32_EBP, dreg_lo),
		      FUNC2(dst_lo));
		/* mov dword ptr [ebp+off],dreg_hi */
		FUNC1(0x89, FUNC4(0x40, IA32_EBP, dreg_hi),
		      FUNC2(dst_hi));
	}
	*pprog = prog;
}