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
 int RBTX4939_IRQ_IOC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rbtx4939_ien_addr ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	int ioc_nr = d->irq - RBTX4939_IRQ_IOC;

	FUNC2(FUNC1(rbtx4939_ien_addr) & ~(1 << ioc_nr), rbtx4939_ien_addr);
	FUNC0();
}