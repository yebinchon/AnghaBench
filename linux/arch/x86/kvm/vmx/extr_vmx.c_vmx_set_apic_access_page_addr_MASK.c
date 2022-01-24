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
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  hpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ACCESS_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, hpa_t hpa)
{
	if (!FUNC0(vcpu)) {
		FUNC1(APIC_ACCESS_ADDR, hpa);
		FUNC2(vcpu, true);
	}
}