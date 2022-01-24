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
 unsigned int IRQ_AMIGA_CIAA ; 
 unsigned int IRQ_AMIGA_CIAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ciaa_base ; 
 int /*<<< orphan*/  ciab_base ; 

__attribute__((used)) static void FUNC1(struct irq_data *data)
{
	unsigned int irq = data->irq;

	if (irq >= IRQ_AMIGA_CIAB)
		FUNC0(&ciab_base, 1 << (irq - IRQ_AMIGA_CIAB));
	else
		FUNC0(&ciaa_base, 1 << (irq - IRQ_AMIGA_CIAA));
}