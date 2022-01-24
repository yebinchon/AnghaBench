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
struct TYPE_2__ {int /*<<< orphan*/  cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mips_interrupt {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_IRQ0 ; 
 int /*<<< orphan*/  C_IRQ1 ; 
 int /*<<< orphan*/  C_IRQ2 ; 
 int /*<<< orphan*/  MIPS_EXC_INT_IO ; 
 int /*<<< orphan*/  MIPS_EXC_INT_IPI_1 ; 
 int /*<<< orphan*/  MIPS_EXC_INT_IPI_2 ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct kvm_vcpu *vcpu,
			      struct kvm_mips_interrupt *irq)
{
	int intr = (int)irq->irq;

	/*
	 * Cause bits to reflect the pending IO interrupt,
	 * the EXC code will be set when we are actually
	 * delivering the interrupt:
	 */
	switch (intr) {
	case 2:
		FUNC1(vcpu->arch.cop0, (C_IRQ0));
		/* Queue up an INT exception for the core */
		FUNC0(vcpu, MIPS_EXC_INT_IO);
		break;

	case 3:
		FUNC1(vcpu->arch.cop0, (C_IRQ1));
		FUNC0(vcpu, MIPS_EXC_INT_IPI_1);
		break;

	case 4:
		FUNC1(vcpu->arch.cop0, (C_IRQ2));
		FUNC0(vcpu, MIPS_EXC_INT_IPI_2);
		break;

	default:
		break;
	}

}