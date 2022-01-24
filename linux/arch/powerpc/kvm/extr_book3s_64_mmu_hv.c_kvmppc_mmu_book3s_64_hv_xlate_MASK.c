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
struct kvmppc_slb {unsigned long origv; } ;
struct kvmppc_pte {int eaddr; unsigned long vpage; int may_execute; int /*<<< orphan*/  raddr; int /*<<< orphan*/  may_write; int /*<<< orphan*/  may_read; } ;
struct TYPE_9__ {int msr; } ;
struct TYPE_10__ {int /*<<< orphan*/  amr; TYPE_4__ shregs; } ;
struct kvm_vcpu {TYPE_5__ arch; struct kvm* kvm; } ;
struct TYPE_7__ {TYPE_1__* rev; scalar_t__ virt; } ;
struct TYPE_8__ {unsigned long vrma_slb_v; TYPE_2__ hpt; } ;
struct kvm {TYPE_3__ arch; } ;
typedef  int gva_t ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_6__ {unsigned long guest_rpte; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int EINVAL ; 
 int ENOENT ; 
 unsigned long HPTE_R_G ; 
 unsigned long HPTE_R_N ; 
 unsigned long HPTE_R_PP ; 
 unsigned long HPTE_R_PP0 ; 
 int HPTE_V_ABSENT ; 
 unsigned long HPTE_V_AVPN ; 
 unsigned long HPTE_V_HVLOCK ; 
 int HPTE_V_VALID ; 
 int MSR_DR ; 
 int MSR_IR ; 
 int MSR_PR ; 
 unsigned long SLB_VSID_KP ; 
 unsigned long SLB_VSID_KS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (struct kvm*) ; 
 long FUNC7 (struct kvm*,int,unsigned long,int) ; 
 struct kvmppc_slb* FUNC8 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long,int) ; 
 int FUNC10 (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct kvm_vcpu *vcpu, gva_t eaddr,
			struct kvmppc_pte *gpte, bool data, bool iswrite)
{
	struct kvm *kvm = vcpu->kvm;
	struct kvmppc_slb *slbe;
	unsigned long slb_v;
	unsigned long pp, key;
	unsigned long v, orig_v, gr;
	__be64 *hptep;
	long int index;
	int virtmode = vcpu->arch.shregs.msr & (data ? MSR_DR : MSR_IR);

	if (FUNC6(vcpu->kvm))
		return FUNC10(vcpu, eaddr, gpte, data, iswrite);

	/* Get SLB entry */
	if (virtmode) {
		slbe = FUNC8(vcpu, eaddr);
		if (!slbe)
			return -EINVAL;
		slb_v = slbe->origv;
	} else {
		/* real mode access */
		slb_v = vcpu->kvm->arch.vrma_slb_v;
	}

	FUNC11();
	/* Find the HPTE in the hash table */
	index = FUNC7(kvm, eaddr, slb_v,
					 HPTE_V_VALID | HPTE_V_ABSENT);
	if (index < 0) {
		FUNC12();
		return -ENOENT;
	}
	hptep = (__be64 *)(kvm->arch.hpt.virt + (index << 4));
	v = orig_v = FUNC0(hptep[0]) & ~HPTE_V_HVLOCK;
	if (FUNC1(CPU_FTR_ARCH_300))
		v = FUNC3(v, FUNC0(hptep[1]));
	gr = kvm->arch.hpt.rev[index].guest_rpte;

	FUNC13(hptep, orig_v);
	FUNC12();

	gpte->eaddr = eaddr;
	gpte->vpage = ((v & HPTE_V_AVPN) << 4) | ((eaddr >> 12) & 0xfff);

	/* Get PP bits and key for permission check */
	pp = gr & (HPTE_R_PP0 | HPTE_R_PP);
	key = (vcpu->arch.shregs.msr & MSR_PR) ? SLB_VSID_KP : SLB_VSID_KS;
	key &= slb_v;

	/* Calculate permissions */
	gpte->may_read = FUNC4(pp, key);
	gpte->may_write = FUNC5(pp, key);
	gpte->may_execute = gpte->may_read && !(gr & (HPTE_R_N | HPTE_R_G));

	/* Storage key permission check for POWER7 */
	if (data && virtmode) {
		int amrfield = FUNC2(gr, vcpu->arch.amr);
		if (amrfield & 1)
			gpte->may_read = 0;
		if (amrfield & 2)
			gpte->may_write = 0;
	}

	/* Get the guest physical address */
	gpte->raddr = FUNC9(v, gr, eaddr);
	return 0;
}