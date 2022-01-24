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
typedef  unsigned int uint32_t ;
struct irq_data {int irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int IRQ_KEYPAD ; 
#define  IRQ_RTCAlrm 129 
#define  IRQ_USB 128 
 unsigned int PWER ; 
 unsigned int PWER_RTC ; 
 int FUNC0 (int,unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d, unsigned int on)
{
	int gpio = FUNC2(d->irq);
	uint32_t mask;

	if (gpio >= 0 && gpio < 128)
		return FUNC0(gpio, on);

	if (d->irq == IRQ_KEYPAD)
		return FUNC1(on);

	switch (d->irq) {
	case IRQ_RTCAlrm:
		mask = PWER_RTC;
		break;
	case IRQ_USB:
		mask = 1u << 26;
		break;
	default:
		return -EINVAL;
	}

	if (on)
		PWER |= mask;
	else
		PWER &=~mask;

	return 0;
}