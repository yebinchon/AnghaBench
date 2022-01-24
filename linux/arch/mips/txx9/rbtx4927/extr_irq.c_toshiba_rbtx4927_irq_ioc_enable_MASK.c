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
 int RBTX4927_IRQ_IOC ; 
 int /*<<< orphan*/  rbtx4927_imask_addr ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	unsigned char v;

	v = FUNC0(rbtx4927_imask_addr);
	v |= (1 << (d->irq - RBTX4927_IRQ_IOC));
	FUNC1(v, rbtx4927_imask_addr);
}