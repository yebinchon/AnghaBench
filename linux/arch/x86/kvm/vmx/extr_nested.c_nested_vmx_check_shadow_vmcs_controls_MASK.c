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
struct vmcs12 {int /*<<< orphan*/  vmwrite_bitmap; int /*<<< orphan*/  vmread_bitmap; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu,
						 struct vmcs12 *vmcs12)
{
	if (!FUNC1(vmcs12))
		return 0;

	if (FUNC0(!FUNC2(vcpu, vmcs12->vmread_bitmap)) ||
	    FUNC0(!FUNC2(vcpu, vmcs12->vmwrite_bitmap)))
		return -EINVAL;

	return 0;
}