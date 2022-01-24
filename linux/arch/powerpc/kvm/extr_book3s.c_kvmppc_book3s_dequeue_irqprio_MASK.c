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
struct TYPE_2__ {unsigned long pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,unsigned long,unsigned long) ; 

void FUNC3(struct kvm_vcpu *vcpu,
					  unsigned int vec)
{
	unsigned long old_pending = vcpu->arch.pending_exceptions;

	FUNC0(FUNC1(vec),
		  &vcpu->arch.pending_exceptions);

	FUNC2(vcpu, vcpu->arch.pending_exceptions,
				  old_pending);
}