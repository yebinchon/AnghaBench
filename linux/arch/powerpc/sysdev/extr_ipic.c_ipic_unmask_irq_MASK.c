#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct ipic {int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {int bit; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 struct ipic* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ipic_info ; 
 int /*<<< orphan*/  ipic_lock ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct ipic *ipic = FUNC0(d->irq);
	unsigned int src = FUNC3(d);
	unsigned long flags;
	u32 temp;

	FUNC4(&ipic_lock, flags);

	temp = FUNC1(ipic->regs, ipic_info[src].mask);
	temp |= (1 << (31 - ipic_info[src].bit));
	FUNC2(ipic->regs, ipic_info[src].mask, temp);

	FUNC5(&ipic_lock, flags);
}