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
struct kvmppc_book3s_shadow_vcpu {int /*<<< orphan*/ * sr; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct kvmppc_book3s_shadow_vcpu* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_book3s_shadow_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	int i;
	struct kvmppc_book3s_shadow_vcpu *svcpu = FUNC2(vcpu);

	FUNC1("MMU: flushing all segments (%d)\n", FUNC0(svcpu->sr));
	for (i = 0; i < FUNC0(svcpu->sr); i++)
		svcpu->sr[i] = SR_INVALID;

	FUNC3(svcpu);
}