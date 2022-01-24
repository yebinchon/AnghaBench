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
typedef  int ulong ;
struct kvmppc_pte {int raddr; int eaddr; int /*<<< orphan*/  may_write; } ;
struct TYPE_9__ {int magic_page_pa; void* shared; } ;
struct TYPE_6__ {int /*<<< orphan*/  st; } ;
struct kvm_vcpu {TYPE_5__* kvm; TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_8__ {TYPE_2__* kvm_ops; } ;
struct TYPE_10__ {TYPE_3__ arch; } ;
struct TYPE_7__ {int (* store_to_eaddr ) (struct kvm_vcpu*,int*,void*,int) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EMULATE_DONE ; 
 int EMULATE_DO_MMIO ; 
 int EPERM ; 
 int KVM_PAM ; 
 int MSR_PR ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  XLATE_DATA ; 
 int /*<<< orphan*/  XLATE_INST ; 
 int /*<<< orphan*/  XLATE_WRITE ; 
 scalar_t__ FUNC0 (TYPE_5__*,int,void*,int) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvmppc_pte*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int FUNC5 (struct kvm_vcpu*,int*,void*,int) ; 

int FUNC6(struct kvm_vcpu *vcpu, ulong *eaddr, int size, void *ptr,
	      bool data)
{
	ulong mp_pa = vcpu->arch.magic_page_pa & KVM_PAM & PAGE_MASK;
	struct kvmppc_pte pte;
	int r = -EINVAL;

	vcpu->stat.st++;

	if (vcpu->kvm->arch.kvm_ops && vcpu->kvm->arch.kvm_ops->store_to_eaddr)
		r = vcpu->kvm->arch.kvm_ops->store_to_eaddr(vcpu, eaddr, ptr,
							    size);

	if ((!r) || (r == -EAGAIN))
		return r;

	r = FUNC3(vcpu, *eaddr, data ? XLATE_DATA : XLATE_INST,
			 XLATE_WRITE, &pte);
	if (r < 0)
		return r;

	*eaddr = pte.raddr;

	if (!pte.may_write)
		return -EPERM;

	/* Magic page override */
	if (FUNC2(vcpu) && mp_pa &&
	    ((pte.raddr & KVM_PAM & PAGE_MASK) == mp_pa) &&
	    !(FUNC1(vcpu) & MSR_PR)) {
		void *magic = vcpu->arch.shared;
		magic += pte.eaddr & 0xfff;
		FUNC4(magic, ptr, size);
		return EMULATE_DONE;
	}

	if (FUNC0(vcpu->kvm, pte.raddr, ptr, size))
		return EMULATE_DO_MMIO;

	return EMULATE_DONE;
}