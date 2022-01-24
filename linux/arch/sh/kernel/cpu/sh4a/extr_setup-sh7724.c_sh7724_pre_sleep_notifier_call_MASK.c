#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int mmselr; int rwtcnt; int rwtcsr; void* spuclk; void* irdaclk; void* imr12; void* imr11; void* imr10; void* imr9; void* imr8; void* imr7; void* imr6; void* imr5; void* imr4; void* imr3; void* imr2; void* imr1; void* imr0; void* iprl; void* iprk; void* iprj; void* ipri; void* iprh; void* iprg; void* iprf; void* ipre; void* iprd; void* iprc; void* iprb; void* ipra; void* cs6bwcr; void* cs6awcr; void* cs5bwcr; void* cs5awcr; void* cs4wcr; void* cs6bbcr; void* cs6abcr; void* cs5bbcr; void* cs5abcr; void* cs4bcr; void* cs0bcr; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 unsigned long SUSP_SH_RSTANDBY ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 TYPE_1__ sh7724_rstandby_state ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb,
					  unsigned long flags, void *unused)
{
	if (!(flags & SUSP_SH_RSTANDBY))
		return NOTIFY_DONE;

	/* BCR */
	sh7724_rstandby_state.mmselr = FUNC1(0xff800020); /* MMSELR */
	sh7724_rstandby_state.mmselr |= 0xa5a50000;
	sh7724_rstandby_state.cs0bcr = FUNC1(0xfec10004); /* CS0BCR */
	sh7724_rstandby_state.cs4bcr = FUNC1(0xfec10010); /* CS4BCR */
	sh7724_rstandby_state.cs5abcr = FUNC1(0xfec10014); /* CS5ABCR */
	sh7724_rstandby_state.cs5bbcr = FUNC1(0xfec10018); /* CS5BBCR */
	sh7724_rstandby_state.cs6abcr = FUNC1(0xfec1001c); /* CS6ABCR */
	sh7724_rstandby_state.cs6bbcr = FUNC1(0xfec10020); /* CS6BBCR */
	sh7724_rstandby_state.cs4wcr = FUNC1(0xfec10030); /* CS4WCR */
	sh7724_rstandby_state.cs5awcr = FUNC1(0xfec10034); /* CS5AWCR */
	sh7724_rstandby_state.cs5bwcr = FUNC1(0xfec10038); /* CS5BWCR */
	sh7724_rstandby_state.cs6awcr = FUNC1(0xfec1003c); /* CS6AWCR */
	sh7724_rstandby_state.cs6bwcr = FUNC1(0xfec10040); /* CS6BWCR */

	/* INTC */
	sh7724_rstandby_state.ipra = FUNC2(0xa4080000); /* IPRA */
	sh7724_rstandby_state.iprb = FUNC2(0xa4080004); /* IPRB */
	sh7724_rstandby_state.iprc = FUNC2(0xa4080008); /* IPRC */
	sh7724_rstandby_state.iprd = FUNC2(0xa408000c); /* IPRD */
	sh7724_rstandby_state.ipre = FUNC2(0xa4080010); /* IPRE */
	sh7724_rstandby_state.iprf = FUNC2(0xa4080014); /* IPRF */
	sh7724_rstandby_state.iprg = FUNC2(0xa4080018); /* IPRG */
	sh7724_rstandby_state.iprh = FUNC2(0xa408001c); /* IPRH */
	sh7724_rstandby_state.ipri = FUNC2(0xa4080020); /* IPRI */
	sh7724_rstandby_state.iprj = FUNC2(0xa4080024); /* IPRJ */
	sh7724_rstandby_state.iprk = FUNC2(0xa4080028); /* IPRK */
	sh7724_rstandby_state.iprl = FUNC2(0xa408002c); /* IPRL */
	sh7724_rstandby_state.imr0 = FUNC0(0xa4080080); /* IMR0 */
	sh7724_rstandby_state.imr1 = FUNC0(0xa4080084); /* IMR1 */
	sh7724_rstandby_state.imr2 = FUNC0(0xa4080088); /* IMR2 */
	sh7724_rstandby_state.imr3 = FUNC0(0xa408008c); /* IMR3 */
	sh7724_rstandby_state.imr4 = FUNC0(0xa4080090); /* IMR4 */
	sh7724_rstandby_state.imr5 = FUNC0(0xa4080094); /* IMR5 */
	sh7724_rstandby_state.imr6 = FUNC0(0xa4080098); /* IMR6 */
	sh7724_rstandby_state.imr7 = FUNC0(0xa408009c); /* IMR7 */
	sh7724_rstandby_state.imr8 = FUNC0(0xa40800a0); /* IMR8 */
	sh7724_rstandby_state.imr9 = FUNC0(0xa40800a4); /* IMR9 */
	sh7724_rstandby_state.imr10 = FUNC0(0xa40800a8); /* IMR10 */
	sh7724_rstandby_state.imr11 = FUNC0(0xa40800ac); /* IMR11 */
	sh7724_rstandby_state.imr12 = FUNC0(0xa40800b0); /* IMR12 */

	/* RWDT */
	sh7724_rstandby_state.rwtcnt = FUNC0(0xa4520000); /* RWTCNT */
	sh7724_rstandby_state.rwtcnt |= 0x5a00;
	sh7724_rstandby_state.rwtcsr = FUNC0(0xa4520004); /* RWTCSR */
	sh7724_rstandby_state.rwtcsr |= 0xa500;
	FUNC3(sh7724_rstandby_state.rwtcsr & 0x07, 0xa4520004);

	/* CPG */
	sh7724_rstandby_state.irdaclk = FUNC1(0xa4150018); /* IRDACLKCR */
	sh7724_rstandby_state.spuclk = FUNC1(0xa415003c); /* SPUCLKCR */

	return NOTIFY_DONE;
}