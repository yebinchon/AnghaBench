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
struct TYPE_2__ {unsigned long cr8; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 

unsigned long FUNC2(struct kvm_vcpu *vcpu)
{
	if (FUNC1(vcpu))
		return FUNC0(vcpu);
	else
		return vcpu->arch.cr8;
}