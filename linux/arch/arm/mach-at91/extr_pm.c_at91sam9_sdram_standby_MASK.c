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
 int AT91_SDRAMC_LPCB ; 
 int AT91_SDRAMC_LPCB_SELF_REFRESH ; 
 int /*<<< orphan*/  AT91_SDRAMC_LPR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ soc_pm ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 lpr0, lpr1 = 0;
	u32 saved_lpr0, saved_lpr1 = 0;

	if (soc_pm.data.ramc[1]) {
		saved_lpr1 = FUNC0(1, AT91_SDRAMC_LPR);
		lpr1 = saved_lpr1 & ~AT91_SDRAMC_LPCB;
		lpr1 |= AT91_SDRAMC_LPCB_SELF_REFRESH;
	}

	saved_lpr0 = FUNC0(0, AT91_SDRAMC_LPR);
	lpr0 = saved_lpr0 & ~AT91_SDRAMC_LPCB;
	lpr0 |= AT91_SDRAMC_LPCB_SELF_REFRESH;

	/* self-refresh mode now */
	FUNC1(0, AT91_SDRAMC_LPR, lpr0);
	if (soc_pm.data.ramc[1])
		FUNC1(1, AT91_SDRAMC_LPR, lpr1);

	FUNC2();

	FUNC1(0, AT91_SDRAMC_LPR, saved_lpr0);
	if (soc_pm.data.ramc[1])
		FUNC1(1, AT91_SDRAMC_LPR, saved_lpr1);
}