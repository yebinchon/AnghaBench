#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* pending_pri; void* mfrr; } ;
struct kvmppc_icp {unsigned long server_num; TYPE_1__ state; struct kvm_vcpu* vcpu; } ;
struct TYPE_6__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; TYPE_2__ arch; TYPE_4__* kvm; } ;
struct TYPE_7__ {int /*<<< orphan*/  xics; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* MASKED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*,unsigned long) ; 
 struct kvmppc_icp* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu, unsigned long server_num)
{
	struct kvmppc_icp *icp;

	if (!vcpu->kvm->arch.xics)
		return -ENODEV;

	if (FUNC1(vcpu->kvm, server_num))
		return -EEXIST;

	icp = FUNC2(sizeof(struct kvmppc_icp), GFP_KERNEL);
	if (!icp)
		return -ENOMEM;

	icp->vcpu = vcpu;
	icp->server_num = server_num;
	icp->state.mfrr = MASKED;
	icp->state.pending_pri = MASKED;
	vcpu->arch.icp = icp;

	FUNC0("created server for vcpu %d\n", vcpu->vcpu_id);

	return 0;
}