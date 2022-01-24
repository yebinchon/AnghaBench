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
struct TYPE_11__ {int /*<<< orphan*/  pfault_token; TYPE_4__* sie_block; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_5__ arch; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_8__ {scalar_t__ fpc; } ;
struct TYPE_9__ {TYPE_2__ fpu; } ;
struct TYPE_12__ {TYPE_3__ thread; } ;
struct TYPE_7__ {unsigned long mask; unsigned long addr; } ;
struct TYPE_10__ {unsigned long ckc; int* gcr; int gbea; int /*<<< orphan*/  fpf; scalar_t__ pp; scalar_t__ todpr; TYPE_1__ gpsw; } ;

/* Variables and functions */
 int CR0_INTERRUPT_KEY_SUBMASK ; 
 int CR0_MEASUREMENT_ALERT_SUBMASK ; 
 int CR0_UNUSED_56 ; 
 int CR14_EXTERNAL_DAMAGE_SUBMASK ; 
 int CR14_UNUSED_32 ; 
 int CR14_UNUSED_33 ; 
 int /*<<< orphan*/  FPF_BPBC ; 
 int /*<<< orphan*/  KVM_S390_PFAULT_TOKEN_INVALID ; 
 TYPE_6__* current ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu)
{
	/* this equals initial cpu reset in pop, but we don't switch to ESA */
	vcpu->arch.sie_block->gpsw.mask = 0UL;
	vcpu->arch.sie_block->gpsw.addr = 0UL;
	FUNC3(vcpu, 0);
	FUNC2(vcpu, 0);
	vcpu->arch.sie_block->ckc       = 0UL;
	vcpu->arch.sie_block->todpr     = 0;
	FUNC6(vcpu->arch.sie_block->gcr, 0, 16 * sizeof(__u64));
	vcpu->arch.sie_block->gcr[0]  = CR0_UNUSED_56 |
					CR0_INTERRUPT_KEY_SUBMASK |
					CR0_MEASUREMENT_ALERT_SUBMASK;
	vcpu->arch.sie_block->gcr[14] = CR14_UNUSED_32 |
					CR14_UNUSED_33 |
					CR14_EXTERNAL_DAMAGE_SUBMASK;
	/* make sure the new fpc will be lazily loaded */
	FUNC7();
	current->thread.fpu.fpc = 0;
	vcpu->arch.sie_block->gbea = 1;
	vcpu->arch.sie_block->pp = 0;
	vcpu->arch.sie_block->fpf &= ~FPF_BPBC;
	vcpu->arch.pfault_token = KVM_S390_PFAULT_TOKEN_INVALID;
	FUNC0(vcpu);
	if (!FUNC4(vcpu->kvm))
		FUNC5(vcpu);
	FUNC1(vcpu);
}