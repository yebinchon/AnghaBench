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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned long dsrr0; int /*<<< orphan*/  dsrr1; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_DEBUG_LVL_EXC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, unsigned long srr0, u32 srr1)
{
	if (FUNC0(CPU_FTR_DEBUG_LVL_EXC)) {
		vcpu->arch.dsrr0 = srr0;
		vcpu->arch.dsrr1 = srr1;
	} else {
		FUNC1(vcpu, srr0, srr1);
	}
}