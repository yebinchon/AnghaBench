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
struct mm_struct {int dummy; } ;
struct TYPE_3__ {int last_exec_cpu; int* vzguestid; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  asid_flush_mask; struct mm_struct gpa_mm; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUESTID_MASK ; 
 int GUESTID_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 scalar_t__ cpu_has_guestid ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct kvm_vcpu** last_exec_vcpu ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, int cpu)
{
	struct kvm *kvm = vcpu->kvm;
	struct mm_struct *gpa_mm = &kvm->arch.gpa_mm;
	bool migrated;

	/*
	 * Are we entering guest context on a different CPU to last time?
	 * If so, the VCPU's guest TLB state on this CPU may be stale.
	 */
	migrated = (vcpu->arch.last_exec_cpu != cpu);
	vcpu->arch.last_exec_cpu = cpu;

	/*
	 * A vcpu's GuestID is set in GuestCtl1.ID when the vcpu is loaded and
	 * remains set until another vcpu is loaded in.  As a rule GuestRID
	 * remains zeroed when in root context unless the kernel is busy
	 * manipulating guest tlb entries.
	 */
	if (cpu_has_guestid) {
		/*
		 * Check if our GuestID is of an older version and thus invalid.
		 *
		 * We also discard the stored GuestID if we've executed on
		 * another CPU, as the guest mappings may have changed without
		 * hypervisor knowledge.
		 */
		if (migrated ||
		    (vcpu->arch.vzguestid[cpu] ^ FUNC4(cpu)) &
					GUESTID_VERSION_MASK) {
			FUNC5(cpu, vcpu);
			vcpu->arch.vzguestid[cpu] = FUNC4(cpu);
			FUNC7(vcpu,
						 vcpu->arch.vzguestid[cpu]);
		}

		/* Restore GuestID */
		FUNC0(GUESTID_MASK, vcpu->arch.vzguestid[cpu]);
	} else {
		/*
		 * The Guest TLB only stores a single guest's TLB state, so
		 * flush it if another VCPU has executed on this CPU.
		 *
		 * We also flush if we've executed on another CPU, as the guest
		 * mappings may have changed without hypervisor knowledge.
		 */
		if (migrated || last_exec_vcpu[cpu] != vcpu)
			FUNC6();
		last_exec_vcpu[cpu] = vcpu;

		/*
		 * Root ASID dealiases guest GPA mappings in the root TLB.
		 * Allocate new root ASID if needed.
		 */
		if (FUNC2(cpu, &kvm->arch.asid_flush_mask))
			FUNC3(gpa_mm);
		else
			FUNC1(gpa_mm);
	}
}