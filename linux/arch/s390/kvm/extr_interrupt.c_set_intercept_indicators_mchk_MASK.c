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
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int /*<<< orphan*/  lctl; int /*<<< orphan*/  ictl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICTL_LPSW ; 
 int IRQ_PEND_MCHK_MASK ; 
 int /*<<< orphan*/  LCTL_CR14 ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	if (!(FUNC0(vcpu) & IRQ_PEND_MCHK_MASK))
		return;
	if (FUNC1(vcpu))
		vcpu->arch.sie_block->ictl |= ICTL_LPSW;
	else
		vcpu->arch.sie_block->lctl |= LCTL_CR14;
}