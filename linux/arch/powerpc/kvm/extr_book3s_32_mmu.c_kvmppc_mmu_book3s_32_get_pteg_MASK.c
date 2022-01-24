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
typedef  int u32 ;
struct kvmppc_vcpu_book3s {int sdr1; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int hva_t ;
typedef  int gva_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (int) ; 
 struct kvmppc_vcpu_book3s* FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static hva_t FUNC6(struct kvm_vcpu *vcpu,
				      u32 sre, gva_t eaddr,
				      bool primary)
{
	struct kvmppc_vcpu_book3s *vcpu_book3s = FUNC5(vcpu);
	u32 page, hash, pteg, htabmask;
	hva_t r;

	page = (eaddr & 0x0FFFFFFF) >> 12;
	htabmask = ((vcpu_book3s->sdr1 & 0x1FF) << 16) | 0xFFC0;

	hash = ((FUNC4(sre) ^ page) << 6);
	if (!primary)
		hash = ~hash;
	hash &= htabmask;

	pteg = (vcpu_book3s->sdr1 & 0xffff0000) | hash;

	FUNC0("MMU: pc=0x%lx eaddr=0x%lx sdr1=0x%llx pteg=0x%x vsid=0x%x\n",
		FUNC3(vcpu), eaddr, vcpu_book3s->sdr1, pteg,
		FUNC4(sre));

	r = FUNC1(vcpu->kvm, pteg >> PAGE_SHIFT);
	if (FUNC2(r))
		return r;
	return r | (pteg & ~PAGE_MASK);
}