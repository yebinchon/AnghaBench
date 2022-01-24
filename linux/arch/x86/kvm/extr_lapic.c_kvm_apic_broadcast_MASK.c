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
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 scalar_t__ APIC_BROADCAST ; 
 scalar_t__ X2APIC_BROADCAST ; 
 scalar_t__ FUNC0 (struct kvm_lapic*) ; 

__attribute__((used)) static bool FUNC1(struct kvm_lapic *apic, u32 mda)
{
	return mda == (FUNC0(apic) ?
			X2APIC_BROADCAST : APIC_BROADCAST);
}