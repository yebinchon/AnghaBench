#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  diagnose_9c; } ;
struct TYPE_11__ {TYPE_4__* sie_block; } ;
struct kvm_vcpu {int vcpu_id; int /*<<< orphan*/  kvm; TYPE_6__ stat; TYPE_5__ arch; TYPE_3__* run; } ;
struct TYPE_10__ {int ipa; } ;
struct TYPE_7__ {int* gprs; } ;
struct TYPE_8__ {TYPE_1__ regs; } ;
struct TYPE_9__ {TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int) ; 
 struct kvm_vcpu* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvm_vcpu *tcpu;
	int tid;

	tid = vcpu->run->s.regs.gprs[(vcpu->arch.sie_block->ipa & 0xf0) >> 4];
	vcpu->stat.diagnose_9c++;
	FUNC0(vcpu, 5, "diag time slice end directed to %d", tid);

	if (tid == vcpu->vcpu_id)
		return 0;

	tcpu = FUNC1(vcpu->kvm, tid);
	if (tcpu)
		FUNC2(tcpu);
	return 0;
}