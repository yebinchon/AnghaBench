#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {scalar_t__* ramc; } ;
struct TYPE_4__ {TYPE_1__ data; } ;

/* Variables and functions */
 int AT91_DDRSDRC_LPCB ; 
 int AT91_DDRSDRC_LPCB_SELF_REFRESH ; 
 int /*<<< orphan*/  AT91_DDRSDRC_LPR ; 
 int AT91_DDRSDRC_MD ; 
 int /*<<< orphan*/  AT91_DDRSDRC_MDR ; 
 int AT91_DDRSDRC_MD_DDR2 ; 
 int AT91_DDRSDRC_MD_LOW_POWER_DDR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ soc_pm ; 

__attribute__((used)) static void FUNC3(void)
{
	/* Those two values allow us to delay self-refresh activation
	 * to the maximum. */
	u32 lpr0, lpr1 = 0;
	u32 mdr, saved_mdr0, saved_mdr1 = 0;
	u32 saved_lpr0, saved_lpr1 = 0;

	/* LPDDR1 --> force DDR2 mode during self-refresh */
	saved_mdr0 = FUNC0(0, AT91_DDRSDRC_MDR);
	if ((saved_mdr0 & AT91_DDRSDRC_MD) == AT91_DDRSDRC_MD_LOW_POWER_DDR) {
		mdr = saved_mdr0 & ~AT91_DDRSDRC_MD;
		mdr |= AT91_DDRSDRC_MD_DDR2;
		FUNC1(0, AT91_DDRSDRC_MDR, mdr);
	}

	if (soc_pm.data.ramc[1]) {
		saved_lpr1 = FUNC0(1, AT91_DDRSDRC_LPR);
		lpr1 = saved_lpr1 & ~AT91_DDRSDRC_LPCB;
		lpr1 |= AT91_DDRSDRC_LPCB_SELF_REFRESH;
		saved_mdr1 = FUNC0(1, AT91_DDRSDRC_MDR);
		if ((saved_mdr1 & AT91_DDRSDRC_MD) == AT91_DDRSDRC_MD_LOW_POWER_DDR) {
			mdr = saved_mdr1 & ~AT91_DDRSDRC_MD;
			mdr |= AT91_DDRSDRC_MD_DDR2;
			FUNC1(1, AT91_DDRSDRC_MDR, mdr);
		}
	}

	saved_lpr0 = FUNC0(0, AT91_DDRSDRC_LPR);
	lpr0 = saved_lpr0 & ~AT91_DDRSDRC_LPCB;
	lpr0 |= AT91_DDRSDRC_LPCB_SELF_REFRESH;

	/* self-refresh mode now */
	FUNC1(0, AT91_DDRSDRC_LPR, lpr0);
	if (soc_pm.data.ramc[1])
		FUNC1(1, AT91_DDRSDRC_LPR, lpr1);

	FUNC2();

	FUNC1(0, AT91_DDRSDRC_MDR, saved_mdr0);
	FUNC1(0, AT91_DDRSDRC_LPR, saved_lpr0);
	if (soc_pm.data.ramc[1]) {
		FUNC1(0, AT91_DDRSDRC_MDR, saved_mdr1);
		FUNC1(1, AT91_DDRSDRC_LPR, saved_lpr1);
	}
}