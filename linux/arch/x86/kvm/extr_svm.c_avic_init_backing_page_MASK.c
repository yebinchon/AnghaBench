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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {TYPE_1__* apic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct vcpu_svm {int /*<<< orphan*/ * avic_physical_id_cache; int /*<<< orphan*/  avic_backing_page; TYPE_3__ vcpu; } ;
struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int AVIC_MAX_PHYSICAL_ID_COUNT ; 
 int AVIC_PHYSICAL_ID_ENTRY_BACKING_PAGE_MASK ; 
 int AVIC_PHYSICAL_ID_ENTRY_VALID_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu)
{
	int ret;
	u64 *entry, new_entry;
	int id = vcpu->vcpu_id;
	struct vcpu_svm *svm = FUNC5(vcpu);

	ret = FUNC3(vcpu);
	if (ret)
		return ret;

	if (id >= AVIC_MAX_PHYSICAL_ID_COUNT)
		return -EINVAL;

	if (!svm->vcpu.arch.apic->regs)
		return -EINVAL;

	svm->avic_backing_page = FUNC6(svm->vcpu.arch.apic->regs);

	/* Setting AVIC backing page address in the phy APIC ID table */
	entry = FUNC2(vcpu, id);
	if (!entry)
		return -EINVAL;

	new_entry = FUNC1((FUNC4(svm->avic_backing_page) &
			      AVIC_PHYSICAL_ID_ENTRY_BACKING_PAGE_MASK) |
			      AVIC_PHYSICAL_ID_ENTRY_VALID_MASK);
	FUNC0(*entry, new_entry);

	svm->avic_physical_id_cache = entry;

	return 0;
}