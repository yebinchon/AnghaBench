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
struct xive_irq_data {int stale_p; } ;
struct kvmppc_xive_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xive_esc_on; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct xive_irq_data* FUNC0 (struct irq_data*) ; 
 struct irq_data* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct kvm_vcpu *vcpu,
				    struct kvmppc_xive_vcpu *xc, int irq)
{
	struct irq_data *d = FUNC1(irq);
	struct xive_irq_data *xd = FUNC0(d);

	/*
	 * This slightly odd sequence gives the right result
	 * (i.e. stale_p set if xive_esc_on is false) even if
	 * we race with xive_esc_irq() and xive_irq_eoi().
	 */
	xd->stale_p = false;
	FUNC2();		/* paired with smb_wmb in xive_esc_irq */
	if (!vcpu->arch.xive_esc_on)
		xd->stale_p = true;
}