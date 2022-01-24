#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ vpid02; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;

/* Variables and functions */
 struct vmcs12* FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct vmcs12*) ; 
 scalar_t__ FUNC2 (struct vmcs12*) ; 
 TYPE_2__* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC4(struct kvm_vcpu *vcpu)
{
	struct vmcs12 *vmcs12 = FUNC0(vcpu);

	return FUNC1(vmcs12) ||
	       (FUNC2(vmcs12) && FUNC3(vcpu)->nested.vpid02);
}