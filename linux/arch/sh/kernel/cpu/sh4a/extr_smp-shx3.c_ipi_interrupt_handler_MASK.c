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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *arg)
{
	unsigned int message = (unsigned int)(long)arg;
	unsigned int cpu = FUNC2();
	unsigned int offs = 4 * cpu;
	unsigned int x;

	x = FUNC0(0xfe410070 + offs); /* C0INITICI..CnINTICI */
	x &= (1 << (message << 2));
	FUNC1(x, 0xfe410080 + offs); /* C0INTICICLR..CnINTICICLR */

	FUNC3(message);

	return IRQ_HANDLED;
}