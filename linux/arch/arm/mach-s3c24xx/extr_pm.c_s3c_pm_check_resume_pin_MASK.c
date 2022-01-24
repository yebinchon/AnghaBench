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

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_GPIO_INPUT ; 
 unsigned long S3C2410_GPIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned int) ; 
 long s3c_irqwake_eintmask ; 
 long s3c_irqwake_intmask ; 

__attribute__((used)) static void FUNC4(unsigned int pin, unsigned int irqoffs)
{
	unsigned long irqstate;
	unsigned long pinstate;
	int irq = FUNC1(pin);

	if (irqoffs < 4)
		irqstate = s3c_irqwake_intmask & (1L<<irqoffs);
	else
		irqstate = s3c_irqwake_eintmask & (1L<<irqoffs);

	pinstate = FUNC3(pin);

	if (!irqstate) {
		if (pinstate == S3C2410_GPIO_IRQ)
			FUNC0("Leaving IRQ %d (pin %d) as is\n", irq, pin);
	} else {
		if (pinstate == S3C2410_GPIO_IRQ) {
			FUNC0("Disabling IRQ %d (pin %d)\n", irq, pin);
			FUNC2(pin, S3C2410_GPIO_INPUT);
		}
	}
}