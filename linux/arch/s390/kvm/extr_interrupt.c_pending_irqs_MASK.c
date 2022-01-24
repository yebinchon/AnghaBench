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
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_s390_gisa_interrupt {scalar_t__ origin; } ;
struct TYPE_3__ {struct kvm_s390_gisa_interrupt gisa_int; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 unsigned long IRQ_PEND_IO_ISC_7 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline unsigned long FUNC2(struct kvm_vcpu *vcpu)
{
	struct kvm_s390_gisa_interrupt *gi = &vcpu->kvm->arch.gisa_int;
	unsigned long pending_mask;

	pending_mask = FUNC1(vcpu);
	if (gi->origin)
		pending_mask |= FUNC0(gi->origin) << IRQ_PEND_IO_ISC_7;
	return pending_mask;
}