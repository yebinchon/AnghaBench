#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct openpic {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  pin; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ irqchip; } ;
struct TYPE_4__ {struct openpic* mpic; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct openpic*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct kvm_kernel_irq_routing_entry *e,
			struct kvm *kvm, int irq_source_id, int level,
			bool line_status)
{
	u32 irq = e->irqchip.pin;
	struct openpic *opp = kvm->arch.mpic;
	unsigned long flags;

	FUNC1(&opp->lock, flags);
	FUNC0(opp, irq, level);
	FUNC2(&opp->lock, flags);

	/* All code paths we care about don't check for the return value */
	return 0;
}