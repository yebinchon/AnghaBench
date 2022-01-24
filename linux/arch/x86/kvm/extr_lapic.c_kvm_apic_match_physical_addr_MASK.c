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
 scalar_t__ FUNC0 (struct kvm_lapic*) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*,int) ; 
 int FUNC2 (struct kvm_lapic*) ; 
 int FUNC3 (struct kvm_lapic*) ; 

__attribute__((used)) static bool FUNC4(struct kvm_lapic *apic, u32 mda)
{
	if (FUNC1(apic, mda))
		return true;

	if (FUNC0(apic))
		return mda == FUNC2(apic);

	/*
	 * Hotplug hack: Make LAPIC in xAPIC mode also accept interrupts as if
	 * it were in x2APIC mode.  Hotplugged VCPUs start in xAPIC mode and
	 * this allows unique addressing of VCPUs with APIC ID over 0xff.
	 * The 0xff condition is needed because writeable xAPIC ID.
	 */
	if (FUNC2(apic) > 0xff && mda == FUNC2(apic))
		return true;

	return mda == FUNC3(apic);
}