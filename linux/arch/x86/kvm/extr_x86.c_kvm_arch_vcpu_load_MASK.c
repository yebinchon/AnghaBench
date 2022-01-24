#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int tsc_offset_adjustment; scalar_t__ last_host_tsc; int tsc_catchup; int /*<<< orphan*/  last_guest_tsc; int /*<<< orphan*/  wbinvd_dirty_mask; } ;
struct kvm_vcpu {int cpu; TYPE_3__* kvm; TYPE_1__ arch; } ;
typedef  scalar_t__ s64 ;
struct TYPE_8__ {int /*<<< orphan*/  (* vcpu_load ) (struct kvm_vcpu*,int) ;scalar_t__ (* has_wbinvd_exit ) () ;} ;
struct TYPE_6__ {int /*<<< orphan*/  use_master_clock; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_GLOBAL_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_MIGRATE_TIMER ; 
 int /*<<< orphan*/  KVM_REQ_STEAL_UPDATE ; 
 int /*<<< orphan*/  TIF_NEED_FPU_LOAD ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  wbinvd_ipi ; 

void FUNC18(struct kvm_vcpu *vcpu, int cpu)
{
	/* Address WBINVD may be executed by guest */
	if (FUNC10(vcpu)) {
		if (kvm_x86_ops->has_wbinvd_exit())
			FUNC1(cpu, vcpu->arch.wbinvd_dirty_mask);
		else if (vcpu->cpu != -1 && vcpu->cpu != cpu)
			FUNC12(vcpu->cpu,
					wbinvd_ipi, NULL, 1);
	}

	kvm_x86_ops->vcpu_load(vcpu, cpu);

	FUNC2();
	if (FUNC16(TIF_NEED_FPU_LOAD))
		FUNC15();

	/* Apply any externally detected TSC adjustments (due to suspend) */
	if (FUNC17(vcpu->arch.tsc_offset_adjustment)) {
		FUNC0(vcpu, vcpu->arch.tsc_offset_adjustment);
		vcpu->arch.tsc_offset_adjustment = 0;
		FUNC7(KVM_REQ_CLOCK_UPDATE, vcpu);
	}

	if (FUNC17(vcpu->cpu != cpu) || FUNC3()) {
		s64 tsc_delta = !vcpu->arch.last_host_tsc ? 0 :
				FUNC11() - vcpu->arch.last_host_tsc;
		if (tsc_delta < 0)
			FUNC9("KVM discovered backwards TSC");

		if (FUNC3()) {
			u64 offset = FUNC4(vcpu,
						vcpu->arch.last_guest_tsc);
			FUNC8(vcpu, offset);
			vcpu->arch.tsc_catchup = 1;
		}

		if (FUNC5(vcpu))
			FUNC6(vcpu);

		/*
		 * On a host with synchronized TSC, there is no need to update
		 * kvmclock on vcpu->cpu migration
		 */
		if (!vcpu->kvm->arch.use_master_clock || vcpu->cpu == -1)
			FUNC7(KVM_REQ_GLOBAL_CLOCK_UPDATE, vcpu);
		if (vcpu->cpu != cpu)
			FUNC7(KVM_REQ_MIGRATE_TIMER, vcpu);
		vcpu->cpu = cpu;
	}

	FUNC7(KVM_REQ_STEAL_UPDATE, vcpu);
}