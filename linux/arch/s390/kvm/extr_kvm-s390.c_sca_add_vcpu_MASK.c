#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_5__* kvm; TYPE_3__ arch; } ;
struct esca_block {scalar_t__ mcn; TYPE_1__* cpu; } ;
struct bsca_block {scalar_t__ mcn; TYPE_1__* cpu; } ;
typedef  int __u64 ;
typedef  int __u32 ;
struct TYPE_9__ {int /*<<< orphan*/  sca_lock; struct esca_block* sca; scalar_t__ use_esca; } ;
struct TYPE_10__ {TYPE_4__ arch; } ;
struct TYPE_7__ {int scaoh; int scaol; int /*<<< orphan*/  ecb2; } ;
struct TYPE_6__ {int sda; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECB2_ESCA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t,unsigned long*) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	if (!FUNC0()) {
		struct bsca_block *sca = vcpu->kvm->arch.sca;

		/* we still need the basic sca for the ipte control */
		vcpu->arch.sie_block->scaoh = (__u32)(((__u64)sca) >> 32);
		vcpu->arch.sie_block->scaol = (__u32)(__u64)sca;
		return;
	}
	FUNC1(&vcpu->kvm->arch.sca_lock);
	if (vcpu->kvm->arch.use_esca) {
		struct esca_block *sca = vcpu->kvm->arch.sca;

		sca->cpu[vcpu->vcpu_id].sda = (__u64) vcpu->arch.sie_block;
		vcpu->arch.sie_block->scaoh = (__u32)(((__u64)sca) >> 32);
		vcpu->arch.sie_block->scaol = (__u32)(__u64)sca & ~0x3fU;
		vcpu->arch.sie_block->ecb2 |= ECB2_ESCA;
		FUNC3(vcpu->vcpu_id, (unsigned long *) sca->mcn);
	} else {
		struct bsca_block *sca = vcpu->kvm->arch.sca;

		sca->cpu[vcpu->vcpu_id].sda = (__u64) vcpu->arch.sie_block;
		vcpu->arch.sie_block->scaoh = (__u32)(((__u64)sca) >> 32);
		vcpu->arch.sie_block->scaol = (__u32)(__u64)sca;
		FUNC3(vcpu->vcpu_id, (unsigned long *) &sca->mcn);
	}
	FUNC2(&vcpu->kvm->arch.sca_lock);
}