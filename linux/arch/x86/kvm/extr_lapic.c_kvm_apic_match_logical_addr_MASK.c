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
typedef  int u32 ;
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DFR ; 
#define  APIC_DFR_CLUSTER 129 
#define  APIC_DFR_FLAT 128 
 int /*<<< orphan*/  APIC_LDR ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 scalar_t__ FUNC2 (struct kvm_lapic*,int) ; 
 int FUNC3 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct kvm_lapic *apic, u32 mda)
{
	u32 logical_id;

	if (FUNC2(apic, mda))
		return true;

	logical_id = FUNC3(apic, APIC_LDR);

	if (FUNC1(apic))
		return ((logical_id >> 16) == (mda >> 16))
		       && (logical_id & mda & 0xffff) != 0;

	logical_id = FUNC0(logical_id);

	switch (FUNC3(apic, APIC_DFR)) {
	case APIC_DFR_FLAT:
		return (logical_id & mda) != 0;
	case APIC_DFR_CLUSTER:
		return ((logical_id >> 4) == (mda >> 4))
		       && (logical_id & mda & 0xf) != 0;
	default:
		return false;
	}
}