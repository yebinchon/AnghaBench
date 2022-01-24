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
struct TYPE_2__ {int tcr; int /*<<< orphan*/  decar; int /*<<< orphan*/  dec; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int TCR_ARE ; 
 int /*<<< orphan*/  TSR_DIS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

void FUNC2(struct kvm_vcpu *vcpu)
{
	if (vcpu->arch.tcr & TCR_ARE) {
		vcpu->arch.dec = vcpu->arch.decar;
		FUNC0(vcpu);
	}

	FUNC1(vcpu, TSR_DIS);
}