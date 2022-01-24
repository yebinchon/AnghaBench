#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct TYPE_5__ {int /*<<< orphan*/  flags; scalar_t__ system_time; scalar_t__ tsc_timestamp; int /*<<< orphan*/  tsc_to_system_mul; int /*<<< orphan*/  tsc_shift; } ;
struct kvm_vcpu_arch {unsigned long hw_tsc_khz; TYPE_2__ hv_clock; scalar_t__ pv_time_enabled; scalar_t__ last_guest_tsc; scalar_t__ tsc_catchup; } ;
struct kvm_vcpu {TYPE_1__* kvm; struct kvm_vcpu_arch arch; } ;
struct kvm_arch {int use_master_clock; scalar_t__ master_cycle_now; scalar_t__ kvmclock_offset; int /*<<< orphan*/  pvclock_gtod_sync_lock; scalar_t__ master_kernel_ns; } ;
typedef  scalar_t__ s64 ;
struct TYPE_4__ {struct kvm_arch arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_CLOCK_UPDATE ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  PVCLOCK_TSC_STABLE_BIT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  cpu_tsc_khz ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kvm_vcpu* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ kvm_has_tsc_control ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*,scalar_t__) ; 
 unsigned long FUNC9 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct kvm_vcpu *v)
{
	unsigned long flags, tgt_tsc_khz;
	struct kvm_vcpu_arch *vcpu = &v->arch;
	struct kvm_arch *ka = &v->kvm->arch;
	s64 kernel_ns;
	u64 tsc_timestamp, host_tsc;
	u8 pvclock_flags;
	bool use_master_clock;

	kernel_ns = 0;
	host_tsc = 0;

	/*
	 * If the host uses TSC clock, then passthrough TSC as stable
	 * to the guest.
	 */
	FUNC14(&ka->pvclock_gtod_sync_lock);
	use_master_clock = ka->use_master_clock;
	if (use_master_clock) {
		host_tsc = ka->master_cycle_now;
		kernel_ns = ka->master_kernel_ns;
	}
	FUNC15(&ka->pvclock_gtod_sync_lock);

	/* Keep irq disabled to prevent changes to the clock */
	FUNC12(flags);
	tgt_tsc_khz = FUNC0(cpu_tsc_khz);
	if (FUNC16(tgt_tsc_khz == 0)) {
		FUNC11(flags);
		FUNC7(KVM_REQ_CLOCK_UPDATE, v);
		return 1;
	}
	if (!use_master_clock) {
		host_tsc = FUNC13();
		kernel_ns = FUNC3();
	}

	tsc_timestamp = FUNC8(v, host_tsc);

	/*
	 * We may have to catch up the TSC to match elapsed wall clock
	 * time for two reasons, even if kvmclock is used.
	 *   1) CPU could have been running below the maximum TSC rate
	 *   2) Broken TSC compensation resets the base at each VCPU
	 *      entry to avoid unknown leaps of TSC even when running
	 *      again on the same CPU.  This may cause apparent elapsed
	 *      time to disappear, and the guest to stand still or run
	 *	very slowly.
	 */
	if (vcpu->tsc_catchup) {
		u64 tsc = FUNC2(v, kernel_ns);
		if (tsc > tsc_timestamp) {
			FUNC1(v, tsc - tsc_timestamp);
			tsc_timestamp = tsc;
		}
	}

	FUNC11(flags);

	/* With all the info we got, fill in the values */

	if (kvm_has_tsc_control)
		tgt_tsc_khz = FUNC9(v, tgt_tsc_khz);

	if (FUNC16(vcpu->hw_tsc_khz != tgt_tsc_khz)) {
		FUNC4(NSEC_PER_SEC, tgt_tsc_khz * 1000LL,
				   &vcpu->hv_clock.tsc_shift,
				   &vcpu->hv_clock.tsc_to_system_mul);
		vcpu->hw_tsc_khz = tgt_tsc_khz;
	}

	vcpu->hv_clock.tsc_timestamp = tsc_timestamp;
	vcpu->hv_clock.system_time = kernel_ns + v->kvm->arch.kvmclock_offset;
	vcpu->last_guest_tsc = tsc_timestamp;

	/* If the host uses TSC clocksource, then it is stable */
	pvclock_flags = 0;
	if (use_master_clock)
		pvclock_flags |= PVCLOCK_TSC_STABLE_BIT;

	vcpu->hv_clock.flags = pvclock_flags;

	if (vcpu->pv_time_enabled)
		FUNC10(v);
	if (v == FUNC5(v->kvm, 0))
		FUNC6(v->kvm, &vcpu->hv_clock);
	return 0;
}