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
struct irq_data {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_REG_SIMR ; 
 int ioasic_irq_base ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	u32 simr;

	simr = FUNC0(IO_REG_SIMR);
	simr |= (1 << (d->irq - ioasic_irq_base));
	FUNC1(IO_REG_SIMR, simr);
}