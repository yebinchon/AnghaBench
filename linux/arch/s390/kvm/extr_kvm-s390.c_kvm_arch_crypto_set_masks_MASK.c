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
struct TYPE_8__ {int /*<<< orphan*/  adm; int /*<<< orphan*/  aqm; int /*<<< orphan*/  apm; } ;
struct TYPE_7__ {int /*<<< orphan*/  adm; int /*<<< orphan*/  aqm; int /*<<< orphan*/  apm; } ;
struct kvm_s390_crypto_cb {TYPE_4__ apcb0; TYPE_3__ apcb1; } ;
struct TYPE_5__ {int crycbd; struct kvm_s390_crypto_cb* crycb; } ;
struct TYPE_6__ {TYPE_1__ crypto; } ;
struct kvm {int /*<<< orphan*/  lock; TYPE_2__ arch; } ;

/* Variables and functions */
#define  CRYCB_FORMAT0 130 
#define  CRYCB_FORMAT1 129 
#define  CRYCB_FORMAT2 128 
 int CRYCB_FORMAT_MASK ; 
 int /*<<< orphan*/  KVM_REQ_VSIE_RESTART ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int,char*,unsigned long,unsigned short,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct kvm *kvm, unsigned long *apm,
			       unsigned long *aqm, unsigned long *adm)
{
	struct kvm_s390_crypto_cb *crycb = kvm->arch.crypto.crycb;

	FUNC5(&kvm->lock);
	FUNC2(kvm);

	switch (kvm->arch.crypto.crycbd & CRYCB_FORMAT_MASK) {
	case CRYCB_FORMAT2: /* APCB1 use 256 bits */
		FUNC4(crycb->apcb1.apm, apm, 32);
		FUNC0(kvm, 3, "SET CRYCB: apm %016lx %016lx %016lx %016lx",
			 apm[0], apm[1], apm[2], apm[3]);
		FUNC4(crycb->apcb1.aqm, aqm, 32);
		FUNC0(kvm, 3, "SET CRYCB: aqm %016lx %016lx %016lx %016lx",
			 aqm[0], aqm[1], aqm[2], aqm[3]);
		FUNC4(crycb->apcb1.adm, adm, 32);
		FUNC0(kvm, 3, "SET CRYCB: adm %016lx %016lx %016lx %016lx",
			 adm[0], adm[1], adm[2], adm[3]);
		break;
	case CRYCB_FORMAT1:
	case CRYCB_FORMAT0: /* Fall through both use APCB0 */
		FUNC4(crycb->apcb0.apm, apm, 8);
		FUNC4(crycb->apcb0.aqm, aqm, 2);
		FUNC4(crycb->apcb0.adm, adm, 2);
		FUNC0(kvm, 3, "SET CRYCB: apm %016lx aqm %04x adm %04x",
			 apm[0], *((unsigned short *)aqm),
			 *((unsigned short *)adm));
		break;
	default:	/* Can not happen */
		break;
	}

	/* recreate the shadow crycb for each vcpu */
	FUNC1(kvm, KVM_REQ_VSIE_RESTART);
	FUNC3(kvm);
	FUNC6(&kvm->lock);
}