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
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_2__ {int /*<<< orphan*/  regs_avail; int /*<<< orphan*/  cr3; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_CR3 ; 
 int /*<<< orphan*/  VCPU_EXREG_CR3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ enable_ept ; 
 scalar_t__ enable_unrestricted_guest ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	if (enable_unrestricted_guest || (enable_ept && FUNC1(vcpu)))
		vcpu->arch.cr3 = FUNC2(GUEST_CR3);
	FUNC0(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail);
}