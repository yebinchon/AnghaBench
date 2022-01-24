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
struct kvm_vcpu_hv_synic {int /*<<< orphan*/  sint; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu_hv_synic*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct kvm_vcpu_hv_synic* FUNC5 (struct kvm_vcpu*) ; 

void FUNC6(struct kvm_vcpu *vcpu, int vector)
{
	struct kvm_vcpu_hv_synic *synic = FUNC5(vcpu);
	int i;

	FUNC4(vcpu->vcpu_id, vector);

	for (i = 0; i < FUNC0(synic->sint); i++)
		if (FUNC2(FUNC3(synic, i)) == vector)
			FUNC1(vcpu, i);
}