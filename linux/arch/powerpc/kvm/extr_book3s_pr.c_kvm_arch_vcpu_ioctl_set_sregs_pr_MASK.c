#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvmppc_vcpu_book3s {int /*<<< orphan*/ * dbat; int /*<<< orphan*/ * ibat; int /*<<< orphan*/  sdr1; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* mtsrin ) (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* slbmte ) (struct kvm_vcpu*,int,int) ;int /*<<< orphan*/  (* slbia ) (struct kvm_vcpu*) ;} ;
struct TYPE_11__ {int hflags; TYPE_3__ mmu; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_12__ {int* ibat; int* dbat; int /*<<< orphan*/ * sr; } ;
struct TYPE_9__ {TYPE_1__* slb; } ;
struct TYPE_13__ {TYPE_5__ ppc32; TYPE_2__ ppc64; int /*<<< orphan*/  sdr1; } ;
struct TYPE_14__ {TYPE_6__ s; } ;
struct kvm_sregs {TYPE_7__ u; int /*<<< orphan*/  pvr; } ;
struct TYPE_8__ {int slbe; int slbv; } ;

/* Variables and functions */
 int BOOK3S_HFLAG_SLB ; 
 int SLB_ESID_V ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 struct kvmppc_vcpu_book3s* FUNC7 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu,
					    struct kvm_sregs *sregs)
{
	struct kvmppc_vcpu_book3s *vcpu3s = FUNC7(vcpu);
	int i;

	FUNC2(vcpu, sregs->pvr);

	vcpu3s->sdr1 = sregs->u.s.sdr1;
#ifdef CONFIG_PPC_BOOK3S_64
	if (vcpu->arch.hflags & BOOK3S_HFLAG_SLB) {
		/* Flush all SLB entries */
		vcpu->arch.mmu.slbmte(vcpu, 0, 0);
		vcpu->arch.mmu.slbia(vcpu);

		for (i = 0; i < 64; i++) {
			u64 rb = sregs->u.s.ppc64.slb[i].slbe;
			u64 rs = sregs->u.s.ppc64.slb[i].slbv;

			if (rb & SLB_ESID_V)
				vcpu->arch.mmu.slbmte(vcpu, rs, rb);
		}
	} else
#endif
	{
		for (i = 0; i < 16; i++) {
			vcpu->arch.mmu.mtsrin(vcpu, i, sregs->u.s.ppc32.sr[i]);
		}
		for (i = 0; i < 8; i++) {
			FUNC1(vcpu, &(vcpu3s->ibat[i]), false,
				       (u32)sregs->u.s.ppc32.ibat[i]);
			FUNC1(vcpu, &(vcpu3s->ibat[i]), true,
				       (u32)(sregs->u.s.ppc32.ibat[i] >> 32));
			FUNC1(vcpu, &(vcpu3s->dbat[i]), false,
				       (u32)sregs->u.s.ppc32.dbat[i]);
			FUNC1(vcpu, &(vcpu3s->dbat[i]), true,
				       (u32)(sregs->u.s.ppc32.dbat[i] >> 32));
		}
	}

	/* Flush the MMU after messing with the segments */
	FUNC0(vcpu, 0, 0);

	return 0;
}