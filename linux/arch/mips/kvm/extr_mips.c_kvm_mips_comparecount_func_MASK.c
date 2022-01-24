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
struct TYPE_3__ {scalar_t__ wait; } ;
struct kvm_vcpu {int /*<<< orphan*/  wq; TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* queue_timer_int ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 TYPE_2__* kvm_mips_callbacks ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct kvm_vcpu *vcpu = (struct kvm_vcpu *)data;

	kvm_mips_callbacks->queue_timer_int(vcpu);

	vcpu->arch.wait = 0;
	if (FUNC2(&vcpu->wq))
		FUNC1(&vcpu->wq);
}