#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int preempted_in_kernel; int /*<<< orphan*/  last_host_tsc; } ;
struct kvm_vcpu {TYPE_1__ arch; TYPE_2__* kvm; scalar_t__ preempted; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* vcpu_put ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* get_cpl ) (struct kvm_vcpu*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 TYPE_3__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	int idx;

	if (vcpu->preempted)
		vcpu->arch.preempted_in_kernel = !kvm_x86_ops->get_cpl(vcpu);

	/*
	 * Disable page faults because we're in atomic context here.
	 * kvm_write_guest_offset_cached() would call might_fault()
	 * that relies on pagefault_disable() to tell if there's a
	 * bug. NOTE: the write to guest memory may not go through if
	 * during postcopy live migration or if there's heavy guest
	 * paging.
	 */
	FUNC1();
	/*
	 * kvm_memslots() will be called by
	 * kvm_write_guest_offset_cached() so take the srcu lock.
	 */
	idx = FUNC5(&vcpu->kvm->srcu);
	FUNC0(vcpu);
	FUNC6(&vcpu->kvm->srcu, idx);
	FUNC2();
	kvm_x86_ops->vcpu_put(vcpu);
	vcpu->arch.last_host_tsc = FUNC3();
	/*
	 * If userspace has set any breakpoints or watchpoints, dr6 is restored
	 * on every vmexit, but if not, we might have a stale dr6 from the
	 * guest. do_debug expects dr6 to be cleared after it runs, do the same.
	 */
	FUNC4(0, 6);
}