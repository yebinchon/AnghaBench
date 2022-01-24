#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
typedef  int u64 ;
struct kvmppc_pte {int may_execute; int may_read; int may_write; int raddr; int eaddr; int vpage; int /*<<< orphan*/  wimg; int /*<<< orphan*/  page_size; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int (* xlate ) (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;scalar_t__ (* is_dcbz32 ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* esid_to_vsid ) (struct kvm_vcpu*,int,int*) ;} ;
struct TYPE_6__ {int fault_dsisr; int hflags; int paddr_accessed; int vaddr_accessed; TYPE_1__ mmu; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmio_exits; int /*<<< orphan*/  sp_storage; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_2__ stat; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int BOOK3S_HFLAG_DCBZ32 ; 
 int BOOK3S_HFLAG_SPLIT_HACK ; 
 int BOOK3S_INTERRUPT_DATA_STORAGE ; 
 int DSISR_ISSTORE ; 
 int DSISR_NOHPTE ; 
 int DSISR_PROTFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  HPTE_R_M ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int KVM_PAM ; 
 int /*<<< orphan*/  MMU_PAGE_64K ; 
#define  MSR_DR 129 
#define  MSR_IR 128 
 int RESUME_GUEST ; 
 int RESUME_HOST ; 
 int RESUME_HOST_NV ; 
 int SID_SHIFT ; 
 int SPLIT_HACK_MASK ; 
 int SPLIT_HACK_OFFS ; 
 int /*<<< orphan*/  VSID_REAL ; 
 int /*<<< orphan*/  VSID_REAL_DR ; 
 int /*<<< orphan*/  VSID_REAL_IR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int const FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,struct kvmppc_pte*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,struct kvmppc_pte*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,struct kvmppc_pte*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*,int) ; 
 int FUNC11 (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int,int*) ; 
 scalar_t__ FUNC13 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*) ; 

int FUNC15(struct kvm_run *run, struct kvm_vcpu *vcpu,
			    ulong eaddr, int vec)
{
	bool data = (vec == BOOK3S_INTERRUPT_DATA_STORAGE);
	bool iswrite = false;
	int r = RESUME_GUEST;
	int relocated;
	int page_found = 0;
	struct kvmppc_pte pte = { 0 };
	bool dr = (FUNC5(vcpu) & MSR_DR) ? true : false;
	bool ir = (FUNC5(vcpu) & MSR_IR) ? true : false;
	u64 vsid;

	relocated = data ? dr : ir;
	if (data && (vcpu->arch.fault_dsisr & DSISR_ISSTORE))
		iswrite = true;

	/* Resolve real address if translation turned on */
	if (relocated) {
		page_found = vcpu->arch.mmu.xlate(vcpu, eaddr, &pte, data, iswrite);
	} else {
		pte.may_execute = true;
		pte.may_read = true;
		pte.may_write = true;
		pte.raddr = eaddr & KVM_PAM;
		pte.eaddr = eaddr;
		pte.vpage = eaddr >> 12;
		pte.page_size = MMU_PAGE_64K;
		pte.wimg = HPTE_R_M;
	}

	switch (FUNC5(vcpu) & (MSR_DR|MSR_IR)) {
	case 0:
		pte.vpage |= ((u64)VSID_REAL << (SID_SHIFT - 12));
		break;
	case MSR_DR:
		if (!data &&
		    (vcpu->arch.hflags & BOOK3S_HFLAG_SPLIT_HACK) &&
		    ((pte.raddr & SPLIT_HACK_MASK) == SPLIT_HACK_OFFS))
			pte.raddr &= ~SPLIT_HACK_MASK;
		/* fall through */
	case MSR_IR:
		vcpu->arch.mmu.esid_to_vsid(vcpu, eaddr >> SID_SHIFT, &vsid);

		if ((FUNC5(vcpu) & (MSR_DR|MSR_IR)) == MSR_DR)
			pte.vpage |= ((u64)VSID_REAL_DR << (SID_SHIFT - 12));
		else
			pte.vpage |= ((u64)VSID_REAL_IR << (SID_SHIFT - 12));
		pte.vpage |= vsid;

		if (vsid == -1)
			page_found = -EINVAL;
		break;
	}

	if (vcpu->arch.mmu.is_dcbz32(vcpu) &&
	   (!(vcpu->arch.hflags & BOOK3S_HFLAG_DCBZ32))) {
		/*
		 * If we do the dcbz hack, we have to NX on every execution,
		 * so we can patch the executing code. This renders our guest
		 * NX-less.
		 */
		pte.may_execute = !data;
	}

	if (page_found == -ENOENT || page_found == -EPERM) {
		/* Page not found in guest PTE entries, or protection fault */
		u64 flags;

		if (page_found == -EPERM)
			flags = DSISR_PROTFAULT;
		else
			flags = DSISR_NOHPTE;
		if (data) {
			flags |= vcpu->arch.fault_dsisr & DSISR_ISSTORE;
			FUNC1(vcpu, eaddr, flags);
		} else {
			FUNC2(vcpu, flags);
		}
	} else if (page_found == -EINVAL) {
		/* Page not found in guest SLB */
		FUNC9(vcpu, FUNC4(vcpu));
		FUNC0(vcpu, vec + 0x80);
	} else if (FUNC10(vcpu, pte.raddr)) {
		if (data && !(vcpu->arch.fault_dsisr & DSISR_NOHPTE)) {
			/*
			 * There is already a host HPTE there, presumably
			 * a read-only one for a page the guest thinks
			 * is writable, so get rid of it first.
			 */
			FUNC7(vcpu, &pte);
		}
		/* The guest's PTE is not mapped yet. Map on the host */
		if (FUNC6(vcpu, &pte, iswrite) == -EIO) {
			/* Exit KVM if mapping failed */
			run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
			return RESUME_HOST;
		}
		if (data)
			vcpu->stat.sp_storage++;
		else if (vcpu->arch.mmu.is_dcbz32(vcpu) &&
			 (!(vcpu->arch.hflags & BOOK3S_HFLAG_DCBZ32)))
			FUNC8(vcpu, &pte);
	} else {
		/* MMIO */
		vcpu->stat.mmio_exits++;
		vcpu->arch.paddr_accessed = pte.raddr;
		vcpu->arch.vaddr_accessed = pte.eaddr;
		r = FUNC3(run, vcpu);
		if ( r == RESUME_HOST_NV )
			r = RESUME_HOST;
	}

	return r;
}