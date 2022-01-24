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
struct irq_data {int irq; } ;

/* Variables and functions */
#define  IRQ_MMP2_MMC2 131 
#define  IRQ_MMP2_PMIC 130 
#define  IRQ_MMP2_RTC 129 
#define  IRQ_MMP2_RTC_ALARM 128 
 int /*<<< orphan*/  MPMU_WUCRM_PJ ; 
 unsigned long MPMU_WUCRM_PJ_RTC_ALARM ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

int FUNC3(struct irq_data *d, unsigned int on)
{
	unsigned long data = 0;
	int irq = d->irq;

	/* enable wakeup sources */
	switch (irq) {
	case IRQ_MMP2_RTC:
	case IRQ_MMP2_RTC_ALARM:
		data = FUNC0(4) | MPMU_WUCRM_PJ_RTC_ALARM;
		break;
	case IRQ_MMP2_PMIC:
		data = FUNC0(7);
		break;
	case IRQ_MMP2_MMC2:
		/* mmc use WAKEUP2, same as GPIO wakeup source */
		data = FUNC0(2);
		break;
	}
	if (on) {
		if (data) {
			data |= FUNC1(MPMU_WUCRM_PJ);
			FUNC2(data, MPMU_WUCRM_PJ);
		}
	} else {
		if (data) {
			data = ~data & FUNC1(MPMU_WUCRM_PJ);
			FUNC2(data, MPMU_WUCRM_PJ);
		}
	}
	return 0;
}