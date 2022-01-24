#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* sie_block; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_5__* kvm; } ;
struct TYPE_7__ {scalar_t__ dea_kw; scalar_t__ aes_kw; scalar_t__ apie; int /*<<< orphan*/  crycbd; } ;
struct TYPE_8__ {TYPE_1__ crypto; } ;
struct TYPE_11__ {TYPE_2__ arch; } ;
struct TYPE_9__ {int ecb3; int /*<<< orphan*/  ecd; int /*<<< orphan*/  eca; int /*<<< orphan*/  crycbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECA_APIE ; 
 int ECB3_AES ; 
 int ECB3_DEA ; 
 int /*<<< orphan*/  ECD_ECC ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	/*
	 * If the AP instructions are not being interpreted and the MSAX3
	 * facility is not configured for the guest, there is nothing to set up.
	 */
	if (!vcpu->kvm->arch.crypto.apie && !FUNC1(vcpu->kvm, 76))
		return;

	vcpu->arch.sie_block->crycbd = vcpu->kvm->arch.crypto.crycbd;
	vcpu->arch.sie_block->ecb3 &= ~(ECB3_AES | ECB3_DEA);
	vcpu->arch.sie_block->eca &= ~ECA_APIE;
	vcpu->arch.sie_block->ecd &= ~ECD_ECC;

	if (vcpu->kvm->arch.crypto.apie)
		vcpu->arch.sie_block->eca |= ECA_APIE;

	/* Set up protected key support */
	if (vcpu->kvm->arch.crypto.aes_kw) {
		vcpu->arch.sie_block->ecb3 |= ECB3_AES;
		/* ecc is also wrapped with AES key */
		if (FUNC0(vcpu->kvm))
			vcpu->arch.sie_block->ecd |= ECD_ECC;
	}

	if (vcpu->kvm->arch.crypto.dea_kw)
		vcpu->arch.sie_block->ecb3 |= ECB3_DEA;
}