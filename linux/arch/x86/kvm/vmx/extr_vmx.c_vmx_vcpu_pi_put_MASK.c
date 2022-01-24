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
struct pi_desc {int dummy; } ;
struct kvm_vcpu {scalar_t__ preempted; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_POSTING_CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct pi_desc*) ; 
 struct pi_desc* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu)
{
	struct pi_desc *pi_desc = FUNC4(vcpu);

	if (!FUNC1(vcpu->kvm) ||
		!FUNC0(IRQ_POSTING_CAP)  ||
		!FUNC2(vcpu))
		return;

	/* Set SN when the vCPU is preempted */
	if (vcpu->preempted)
		FUNC3(pi_desc);
}