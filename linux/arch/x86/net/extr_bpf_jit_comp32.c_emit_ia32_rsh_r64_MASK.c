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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  IA32_EAX ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_ECX ; 
 int /*<<< orphan*/  IA32_EDX ; 
 int IA32_JB ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 
 int /*<<< orphan*/  src_lo ; 

__attribute__((used)) static inline void FUNC5(const u8 dst[], const u8 src[], bool dstk,
				     bool sstk, u8 **pprog)
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

	if (sstk)
		/* mov ecx,dword ptr [ebp+off] */
		FUNC1(0x8B, FUNC4(0x40, IA32_EBP, IA32_ECX),
		      FUNC2(src_lo));
	else
		/* mov ecx,src_lo */
		FUNC0(0x8B, FUNC4(0xC0, src_lo, IA32_ECX));

	/* shrd dreg_lo,dreg_hi,cl */
	FUNC1(0x0F, 0xAD, FUNC4(0xC0, dreg_lo, dreg_hi));
	/* shr dreg_hi,cl */
	FUNC0(0xD3, FUNC3(0xE8, dreg_hi));

	/* if ecx >= 32, mov dreg_hi to dreg_lo and clear dreg_hi */

	/* cmp ecx,32 */
	FUNC1(0x83, FUNC3(0xF8, IA32_ECX), 32);
	/* skip the next two instructions (4 bytes) when < 32 */
	FUNC0(IA32_JB, 4);

	/* mov dreg_lo,dreg_hi */
	FUNC0(0x89, FUNC4(0xC0, dreg_lo, dreg_hi));
	/* xor dreg_hi,dreg_hi */
	FUNC0(0x33, FUNC4(0xC0, dreg_hi, dreg_hi));

	if (dstk) {
		/* mov dword ptr [ebp+off],dreg_lo */
		FUNC1(0x89, FUNC4(0x40, IA32_EBP, dreg_lo),
		      FUNC2(dst_lo));
		/* mov dword ptr [ebp+off],dreg_hi */
		FUNC1(0x89, FUNC4(0x40, IA32_EBP, dreg_hi),
		      FUNC2(dst_hi));
	}
	/* out: */
	*pprog = prog;
}