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
typedef  int u64 ;
typedef  void* u32 ;
struct kvm_s390_sie_block {unsigned long scaol; unsigned long scaoh; unsigned long itdba; int ecb; unsigned long gvrd; int eca; int ecd; unsigned long riccbd; int ecb3; unsigned long sdnxo; } ;
struct vsie_page {int sca_gpa; int itdba_gpa; int gvrd_gpa; int riccbd_gpa; int sdnx_gpa; struct kvm_s390_sie_block scb_s; struct kvm_s390_sie_block* scb_o; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct bsca_block {int dummy; } ;
typedef  unsigned long hpa_t ;
typedef  int gpa_t ;

/* Variables and functions */
 int ECA_VX ; 
 int ECB3_RI ; 
 int ECB_GS ; 
 int ECB_TE ; 
 int ECD_ETOKENF ; 
 int ECD_HOSTREGMGMT ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_64BSCAO ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,unsigned long*) ; 
 int FUNC3 (struct kvm_s390_sie_block*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct vsie_page*) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
	struct kvm_s390_sie_block *scb_o = vsie_page->scb_o;
	struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
	hpa_t hpa;
	gpa_t gpa;
	int rc = 0;

	gpa = FUNC0(scb_o->scaol) & ~0xfUL;
	if (FUNC4(vcpu->kvm, KVM_S390_VM_CPU_FEAT_64BSCAO))
		gpa |= (u64) FUNC0(scb_o->scaoh) << 32;
	if (gpa) {
		if (gpa < 2 * PAGE_SIZE)
			rc = FUNC3(scb_s, 0x0038U);
		else if ((gpa & ~0x1fffUL) == FUNC1(vcpu))
			rc = FUNC3(scb_s, 0x0011U);
		else if ((gpa & PAGE_MASK) !=
			 ((gpa + sizeof(struct bsca_block) - 1) & PAGE_MASK))
			rc = FUNC3(scb_s, 0x003bU);
		if (!rc) {
			rc = FUNC2(vcpu->kvm, gpa, &hpa);
			if (rc)
				rc = FUNC3(scb_s, 0x0034U);
		}
		if (rc)
			goto unpin;
		vsie_page->sca_gpa = gpa;
		scb_s->scaoh = (u32)((u64)hpa >> 32);
		scb_s->scaol = (u32)(u64)hpa;
	}

	gpa = FUNC0(scb_o->itdba) & ~0xffUL;
	if (gpa && (scb_s->ecb & ECB_TE)) {
		if (gpa < 2 * PAGE_SIZE) {
			rc = FUNC3(scb_s, 0x0080U);
			goto unpin;
		}
		/* 256 bytes cannot cross page boundaries */
		rc = FUNC2(vcpu->kvm, gpa, &hpa);
		if (rc) {
			rc = FUNC3(scb_s, 0x0080U);
			goto unpin;
		}
		vsie_page->itdba_gpa = gpa;
		scb_s->itdba = hpa;
	}

	gpa = FUNC0(scb_o->gvrd) & ~0x1ffUL;
	if (gpa && (scb_s->eca & ECA_VX) && !(scb_s->ecd & ECD_HOSTREGMGMT)) {
		if (gpa < 2 * PAGE_SIZE) {
			rc = FUNC3(scb_s, 0x1310U);
			goto unpin;
		}
		/*
		 * 512 bytes vector registers cannot cross page boundaries
		 * if this block gets bigger, we have to shadow it.
		 */
		rc = FUNC2(vcpu->kvm, gpa, &hpa);
		if (rc) {
			rc = FUNC3(scb_s, 0x1310U);
			goto unpin;
		}
		vsie_page->gvrd_gpa = gpa;
		scb_s->gvrd = hpa;
	}

	gpa = FUNC0(scb_o->riccbd) & ~0x3fUL;
	if (gpa && (scb_s->ecb3 & ECB3_RI)) {
		if (gpa < 2 * PAGE_SIZE) {
			rc = FUNC3(scb_s, 0x0043U);
			goto unpin;
		}
		/* 64 bytes cannot cross page boundaries */
		rc = FUNC2(vcpu->kvm, gpa, &hpa);
		if (rc) {
			rc = FUNC3(scb_s, 0x0043U);
			goto unpin;
		}
		/* Validity 0x0044 will be checked by SIE */
		vsie_page->riccbd_gpa = gpa;
		scb_s->riccbd = hpa;
	}
	if (((scb_s->ecb & ECB_GS) && !(scb_s->ecd & ECD_HOSTREGMGMT)) ||
	    (scb_s->ecd & ECD_ETOKENF)) {
		unsigned long sdnxc;

		gpa = FUNC0(scb_o->sdnxo) & ~0xfUL;
		sdnxc = FUNC0(scb_o->sdnxo) & 0xfUL;
		if (!gpa || gpa < 2 * PAGE_SIZE) {
			rc = FUNC3(scb_s, 0x10b0U);
			goto unpin;
		}
		if (sdnxc < 6 || sdnxc > 12) {
			rc = FUNC3(scb_s, 0x10b1U);
			goto unpin;
		}
		if (gpa & ((1 << sdnxc) - 1)) {
			rc = FUNC3(scb_s, 0x10b2U);
			goto unpin;
		}
		/* Due to alignment rules (checked above) this cannot
		 * cross page boundaries
		 */
		rc = FUNC2(vcpu->kvm, gpa, &hpa);
		if (rc) {
			rc = FUNC3(scb_s, 0x10b0U);
			goto unpin;
		}
		vsie_page->sdnx_gpa = gpa;
		scb_s->sdnxo = hpa | sdnxc;
	}
	return 0;
unpin:
	FUNC5(vcpu, vsie_page);
	return rc;
}