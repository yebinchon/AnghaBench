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
typedef  int u64 ;
struct msr_data {int data; int /*<<< orphan*/  host_initiated; } ;
struct kvm_vcpu {int dummy; } ;
typedef  enum lapic_mode { ____Placeholder_lapic_mode } lapic_mode ;

/* Variables and functions */
 int LAPIC_MODE_DISABLED ; 
 int LAPIC_MODE_INVALID ; 
 int LAPIC_MODE_X2APIC ; 
 int LAPIC_MODE_XAPIC ; 
 unsigned long long X2APIC_ENABLE ; 
 int /*<<< orphan*/  X86_FEATURE_X2APIC ; 
 unsigned long long FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 

int FUNC5(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
	enum lapic_mode old_mode = FUNC3(vcpu);
	enum lapic_mode new_mode = FUNC2(msr_info->data);
	u64 reserved_bits = ((~0ULL) << FUNC0(vcpu)) | 0x2ff |
		(FUNC1(vcpu, X86_FEATURE_X2APIC) ? 0 : X2APIC_ENABLE);

	if ((msr_info->data & reserved_bits) != 0 || new_mode == LAPIC_MODE_INVALID)
		return 1;
	if (!msr_info->host_initiated) {
		if (old_mode == LAPIC_MODE_X2APIC && new_mode == LAPIC_MODE_XAPIC)
			return 1;
		if (old_mode == LAPIC_MODE_DISABLED && new_mode == LAPIC_MODE_X2APIC)
			return 1;
	}

	FUNC4(vcpu, msr_info->data);
	return 0;
}