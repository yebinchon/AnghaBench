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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 unsigned char CIA_ICR_SETCLR ; 
 unsigned int IRQ_AMIGA_CIAA ; 
 unsigned int IRQ_AMIGA_CIAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  ciaa_base ; 
 int /*<<< orphan*/  ciab_base ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	unsigned int irq = data->irq;
	unsigned char mask;

	if (irq >= IRQ_AMIGA_CIAB) {
		mask = 1 << (irq - IRQ_AMIGA_CIAB);
		FUNC1(&ciab_base, mask);
		FUNC0(&ciab_base, CIA_ICR_SETCLR | mask);
	} else {
		mask = 1 << (irq - IRQ_AMIGA_CIAA);
		FUNC1(&ciaa_base, mask);
		FUNC0(&ciaa_base, CIA_ICR_SETCLR | mask);
	}
}