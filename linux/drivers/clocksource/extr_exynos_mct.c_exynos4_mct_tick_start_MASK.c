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
struct mct_clock_event_device {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MCT_L_ICNTB_OFFSET ; 
 scalar_t__ MCT_L_INT_ENB_OFFSET ; 
 unsigned long MCT_L_TCON_INTERVAL_MODE ; 
 unsigned long MCT_L_TCON_INT_START ; 
 scalar_t__ MCT_L_TCON_OFFSET ; 
 unsigned long MCT_L_TCON_TIMER_START ; 
 int /*<<< orphan*/  FUNC0 (struct mct_clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 scalar_t__ reg_base ; 

__attribute__((used)) static void FUNC3(unsigned long cycles,
				   struct mct_clock_event_device *mevt)
{
	unsigned long tmp;

	FUNC0(mevt);

	tmp = (1 << 31) | cycles;	/* MCT_L_UPDATE_ICNTB */

	/* update interrupt count buffer */
	FUNC1(tmp, mevt->base + MCT_L_ICNTB_OFFSET);

	/* enable MCT tick interrupt */
	FUNC1(0x1, mevt->base + MCT_L_INT_ENB_OFFSET);

	tmp = FUNC2(reg_base + mevt->base + MCT_L_TCON_OFFSET);
	tmp |= MCT_L_TCON_INT_START | MCT_L_TCON_TIMER_START |
	       MCT_L_TCON_INTERVAL_MODE;
	FUNC1(tmp, mevt->base + MCT_L_TCON_OFFSET);
}