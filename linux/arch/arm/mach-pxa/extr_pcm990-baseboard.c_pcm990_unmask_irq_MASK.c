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
typedef  int u8 ;
struct irq_data {int irq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCM990_CTRL_INTMSKENA ; 
 int /*<<< orphan*/  PCM990_CTRL_INTSETCLR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int pcm990_irq_enabled ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	int pcm990_irq = (d->irq - FUNC0(0));
	u8 val;

	/* the irq can be acknowledged only if deasserted, so it's done here */

	pcm990_irq_enabled |= (1 << pcm990_irq);

	val = FUNC1(PCM990_CTRL_INTSETCLR);
	val |= 1 << pcm990_irq;
	FUNC2(val, PCM990_CTRL_INTSETCLR);

	FUNC2(pcm990_irq_enabled, PCM990_CTRL_INTMSKENA);
}