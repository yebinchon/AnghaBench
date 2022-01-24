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
struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_vcpu_e500*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_vcpu_e500*,int,int /*<<< orphan*/ ) ; 
 struct kvmppc_vcpu_e500* FUNC3 (struct kvm_vcpu*) ; 

int FUNC4(struct kvm_vcpu *vcpu, int type, gva_t ea)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC3(vcpu);
	int pid = FUNC0(vcpu);

	if (type == 0 || type == 1) {
		FUNC1(vcpu_e500, 0, pid, type);
		FUNC1(vcpu_e500, 1, pid, type);
	} else if (type == 3) {
		FUNC2(vcpu_e500, pid, ea);
	}

	return EMULATE_DONE;
}