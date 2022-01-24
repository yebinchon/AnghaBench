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
typedef  scalar_t__ u32 ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_lapic {scalar_t__ base_address; } ;
struct kvm_io_device {int dummy; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  KVM_X86_QUIRK_LAPIC_MMIO_HOLE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*,scalar_t__,int,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int) ; 
 struct kvm_lapic* FUNC6 (struct kvm_io_device*) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, struct kvm_io_device *this,
			   gpa_t address, int len, void *data)
{
	struct kvm_lapic *apic = FUNC6(this);
	u32 offset = address - apic->base_address;

	if (!FUNC0(apic, address))
		return -EOPNOTSUPP;

	if (!FUNC2(apic) || FUNC1(apic)) {
		if (!FUNC3(vcpu->kvm,
					 KVM_X86_QUIRK_LAPIC_MMIO_HOLE))
			return -EOPNOTSUPP;

		FUNC5(data, 0xff, len);
		return 0;
	}

	FUNC4(apic, offset, len, data);

	return 0;
}