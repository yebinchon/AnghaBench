#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct pvclock_vcpu_time_info {int /*<<< orphan*/  tsc_to_system_mul; int /*<<< orphan*/  tsc_shift; scalar_t__ system_time; int /*<<< orphan*/  tsc_timestamp; } ;
struct kvm_arch {scalar_t__ kvmclock_offset; int /*<<< orphan*/  pvclock_gtod_sync_lock; scalar_t__ master_kernel_ns; int /*<<< orphan*/  master_cycle_now; int /*<<< orphan*/  use_master_clock; } ;
struct kvm {struct kvm_arch arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 scalar_t__ FUNC0 (struct pvclock_vcpu_time_info*,int /*<<< orphan*/ ) ; 
 long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_tsc_khz ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

u64 FUNC9(struct kvm *kvm)
{
	struct kvm_arch *ka = &kvm->arch;
	struct pvclock_vcpu_time_info hv_clock;
	u64 ret;

	FUNC7(&ka->pvclock_gtod_sync_lock);
	if (!ka->use_master_clock) {
		FUNC8(&ka->pvclock_gtod_sync_lock);
		return FUNC3() + ka->kvmclock_offset;
	}

	hv_clock.tsc_timestamp = ka->master_cycle_now;
	hv_clock.system_time = ka->master_kernel_ns + ka->kvmclock_offset;
	FUNC8(&ka->pvclock_gtod_sync_lock);

	/* both __this_cpu_read() and rdtsc() should be on the same cpu */
	FUNC2();

	if (FUNC1(cpu_tsc_khz)) {
		FUNC4(NSEC_PER_SEC, FUNC1(cpu_tsc_khz) * 1000LL,
				   &hv_clock.tsc_shift,
				   &hv_clock.tsc_to_system_mul);
		ret = FUNC0(&hv_clock, FUNC6());
	} else
		ret = FUNC3() + ka->kvmclock_offset;

	FUNC5();

	return ret;
}