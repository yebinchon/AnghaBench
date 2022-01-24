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
struct TYPE_2__ {int bit; int /*<<< orphan*/  ack; } ;

/* Variables and functions */
 struct ipic* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ipic_info ; 
 int /*<<< orphan*/  ipic_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct ipic *ipic = FUNC0(d->irq);
	unsigned int src = FUNC2(d);
	unsigned long flags;
	u32 temp;

	FUNC4(&ipic_lock, flags);

	temp = 1 << (31 - ipic_info[src].bit);
	FUNC1(ipic->regs, ipic_info[src].ack, temp);

	/* mb() can't guarantee that ack is finished.  But it does finish
	 * for nearly all cases. */
	FUNC3();

	FUNC5(&ipic_lock, flags);
}