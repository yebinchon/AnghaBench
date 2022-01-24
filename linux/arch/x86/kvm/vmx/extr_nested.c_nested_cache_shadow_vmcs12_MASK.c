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
struct vmcs12 {unsigned long long vmcs_link_pointer; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {int /*<<< orphan*/  hva; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCS12_SIZE ; 
 struct vmcs12* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_host_map*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmcs12*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmcs12*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu,
				       struct vmcs12 *vmcs12)
{
	struct kvm_host_map map;
	struct vmcs12 *shadow;

	if (!FUNC5(vmcs12) ||
	    vmcs12->vmcs_link_pointer == -1ull)
		return;

	shadow = FUNC0(vcpu);

	if (FUNC2(vcpu, FUNC1(vmcs12->vmcs_link_pointer), &map))
		return;

	FUNC4(shadow, map.hva, VMCS12_SIZE);
	FUNC3(vcpu, &map, false);
}