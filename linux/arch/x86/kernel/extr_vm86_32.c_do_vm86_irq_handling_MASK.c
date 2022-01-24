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
struct TYPE_2__ {int sig; int /*<<< orphan*/  tsk; } ;

/* Variables and functions */
 int ALLOWED_SIGS ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
#define  VM86_FREE_IRQ 131 
#define  VM86_GET_AND_RESET_IRQ 130 
#define  VM86_GET_IRQ_BITS 129 
 int /*<<< orphan*/  VM86_IRQNAME ; 
#define  VM86_REQUEST_IRQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  irq_handler ; 
 int irqbits ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* vm86_irqs ; 

__attribute__((used)) static int FUNC5(int subfunction, int irqnumber)
{
	int ret;
	switch (subfunction) {
		case VM86_GET_AND_RESET_IRQ: {
			return FUNC2(irqnumber);
		}
		case VM86_GET_IRQ_BITS: {
			return irqbits;
		}
		case VM86_REQUEST_IRQ: {
			int sig = irqnumber >> 8;
			int irq = irqnumber & 255;
			if (!FUNC0(CAP_SYS_ADMIN)) return -EPERM;
			if (!((1 << sig) & ALLOWED_SIGS)) return -EPERM;
			if (FUNC3(irq)) return -EPERM;
			if (vm86_irqs[irq].tsk) return -EPERM;
			ret = FUNC4(irq, &irq_handler, 0, VM86_IRQNAME, NULL);
			if (ret) return ret;
			vm86_irqs[irq].sig = sig;
			vm86_irqs[irq].tsk = current;
			return irq;
		}
		case  VM86_FREE_IRQ: {
			if (FUNC3(irqnumber)) return -EPERM;
			if (!vm86_irqs[irqnumber].tsk) return 0;
			if (vm86_irqs[irqnumber].tsk != current) return -EPERM;
			FUNC1(irqnumber);
			return 0;
		}
	}
	return -EINVAL;
}