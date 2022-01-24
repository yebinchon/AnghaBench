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
typedef  int u32 ;

/* Variables and functions */
 int AT91_DDRSDRC_LPCB ; 
 int AT91_DDRSDRC_LPCB_POWER_DOWN ; 
 int /*<<< orphan*/  AT91_DDRSDRC_LPR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 lpr0;
	u32 saved_lpr0;

	saved_lpr0 = FUNC0(0, AT91_DDRSDRC_LPR);
	lpr0 = saved_lpr0 & ~AT91_DDRSDRC_LPCB;
	lpr0 |= AT91_DDRSDRC_LPCB_POWER_DOWN;

	FUNC1(0, AT91_DDRSDRC_LPR, lpr0);

	FUNC2();

	FUNC1(0, AT91_DDRSDRC_LPR, saved_lpr0);
}