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
typedef  scalar_t__ u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FRQCR ; 
 int FRQCR_PLLEN ; 
 int FRQCR_PSTBY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ INTR_OFFSET ; 
 int /*<<< orphan*/  MCR ; 
 int MCR_RFSH ; 
 int MCR_RMODE ; 
 int /*<<< orphan*/  RTCNT ; 
 int /*<<< orphan*/  STBCR ; 
 int STBCR_MSTP2 ; 
 int STBCR_STBY ; 
 int WTCSR_CKS_4096 ; 
 int WTCSR_TME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  wakeup_end ; 
 int /*<<< orphan*/  wakeup_start ; 

__attribute__((used)) static void FUNC14(void)
{
	u8 stbcr, csr;
	u16 frqcr, mcr;
	u32 vbr_new, vbr_old;

	FUNC9();

	/* set wdt */
	csr = FUNC10();
	csr &= ~WTCSR_TME;
	csr |= WTCSR_CKS_4096;
	FUNC12(csr);
	csr = FUNC10();
	FUNC11(0);

	/* disable PLL1 */
	frqcr = FUNC1(FRQCR);
	frqcr &= ~(FRQCR_PLLEN | FRQCR_PSTBY);
	FUNC3(frqcr, FRQCR);

	/* enable standby */
	stbcr = FUNC0(STBCR);
	FUNC2(stbcr | STBCR_STBY | STBCR_MSTP2, STBCR);

	/* set self-refresh */
	mcr = FUNC1(MCR);
	FUNC3(mcr & ~MCR_RFSH, MCR);

	/* set interrupt handler */
	asm volatile("stc vbr, %0" : "=r" (vbr_old));
	vbr_new = FUNC7(GFP_ATOMIC);
	FUNC13(50);
	FUNC8((void*)(vbr_new + INTR_OFFSET),
	       &wakeup_start, &wakeup_end - &wakeup_start);
	asm volatile("ldc %0, vbr" : : "r" (vbr_new));

	FUNC3(0, RTCNT);
	FUNC3(mcr | MCR_RFSH | MCR_RMODE, MCR);

	FUNC5();

	asm volatile("ldc %0, vbr" : : "r" (vbr_old));

	FUNC6(vbr_new);

	/* enable PLL1 */
	frqcr = FUNC1(FRQCR);
	frqcr |= FRQCR_PSTBY;
	FUNC3(frqcr, FRQCR);
	FUNC13(50);
	frqcr |= FRQCR_PLLEN;
	FUNC3(frqcr, FRQCR);

	FUNC2(stbcr, STBCR);

	FUNC4();
}