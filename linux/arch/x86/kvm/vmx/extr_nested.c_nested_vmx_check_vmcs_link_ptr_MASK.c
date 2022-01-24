#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ revision_id; scalar_t__ shadow_vmcs; } ;
struct vmcs12 {unsigned long long vmcs_link_pointer; TYPE_1__ hdr; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {struct vmcs12* hva; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ VMCS12_REVISION ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_host_map*,int) ; 
 scalar_t__ FUNC4 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,unsigned long long) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu,
					  struct vmcs12 *vmcs12)
{
	int r = 0;
	struct vmcs12 *shadow;
	struct kvm_host_map map;

	if (vmcs12->vmcs_link_pointer == -1ull)
		return 0;

	if (FUNC0(!FUNC5(vcpu, vmcs12->vmcs_link_pointer)))
		return -EINVAL;

	if (FUNC0(FUNC2(vcpu, FUNC1(vmcs12->vmcs_link_pointer), &map)))
		return -EINVAL;

	shadow = map.hva;

	if (FUNC0(shadow->hdr.revision_id != VMCS12_REVISION) ||
	    FUNC0(shadow->hdr.shadow_vmcs != FUNC4(vmcs12)))
		r = -EINVAL;

	FUNC3(vcpu, &map, false);
	return r;
}