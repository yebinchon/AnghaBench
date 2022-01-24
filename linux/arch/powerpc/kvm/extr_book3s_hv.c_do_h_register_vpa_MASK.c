#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  word; int /*<<< orphan*/  hword; } ;
struct reg_vpa {TYPE_1__ length; } ;
struct lppaca {int dummy; } ;
struct kvmppc_vpa {unsigned long next_gpa; unsigned long len; int update_pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  vpa_update_lock; struct kvmppc_vpa slb_shadow; struct kvmppc_vpa dtl; struct kvmppc_vpa vpa; } ;
struct kvm_vcpu {TYPE_2__ arch; struct kvm* kvm; } ;
struct kvm {int dummy; } ;
struct dtl_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long H_PARAMETER ; 
 int H_RESOURCE ; 
#define  H_VPA_DEREG_DTL 133 
#define  H_VPA_DEREG_SLB 132 
#define  H_VPA_DEREG_VPA 131 
 unsigned long H_VPA_FUNC_MASK ; 
 unsigned long H_VPA_FUNC_SHIFT ; 
#define  H_VPA_REG_DTL 130 
#define  H_VPA_REG_SLB 129 
#define  H_VPA_REG_VPA 128 
 int L1_CACHE_BYTES ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct kvm_vcpu* FUNC3 (struct kvm*,unsigned long) ; 
 void* FUNC4 (struct kvm*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,void*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct kvmppc_vpa*) ; 

__attribute__((used)) static unsigned long FUNC9(struct kvm_vcpu *vcpu,
				       unsigned long flags,
				       unsigned long vcpuid, unsigned long vpa)
{
	struct kvm *kvm = vcpu->kvm;
	unsigned long len, nb;
	void *va;
	struct kvm_vcpu *tvcpu;
	int err;
	int subfunc;
	struct kvmppc_vpa *vpap;

	tvcpu = FUNC3(kvm, vcpuid);
	if (!tvcpu)
		return H_PARAMETER;

	subfunc = (flags >> H_VPA_FUNC_SHIFT) & H_VPA_FUNC_MASK;
	if (subfunc == H_VPA_REG_VPA || subfunc == H_VPA_REG_DTL ||
	    subfunc == H_VPA_REG_SLB) {
		/* Registering new area - address must be cache-line aligned */
		if ((vpa & (L1_CACHE_BYTES - 1)) || !vpa)
			return H_PARAMETER;

		/* convert logical addr to kernel addr and read length */
		va = FUNC4(kvm, vpa, &nb);
		if (va == NULL)
			return H_PARAMETER;
		if (subfunc == H_VPA_REG_VPA)
			len = FUNC1(((struct reg_vpa *)va)->length.hword);
		else
			len = FUNC2(((struct reg_vpa *)va)->length.word);
		FUNC5(kvm, va, vpa, false);

		/* Check length */
		if (len > nb || len < sizeof(struct reg_vpa))
			return H_PARAMETER;
	} else {
		vpa = 0;
		len = 0;
	}

	err = H_PARAMETER;
	vpap = NULL;
	FUNC6(&tvcpu->arch.vpa_update_lock);

	switch (subfunc) {
	case H_VPA_REG_VPA:		/* register VPA */
		/*
		 * The size of our lppaca is 1kB because of the way we align
		 * it for the guest to avoid crossing a 4kB boundary. We only
		 * use 640 bytes of the structure though, so we should accept
		 * clients that set a size of 640.
		 */
		FUNC0(sizeof(struct lppaca) != 640);
		if (len < sizeof(struct lppaca))
			break;
		vpap = &tvcpu->arch.vpa;
		err = 0;
		break;

	case H_VPA_REG_DTL:		/* register DTL */
		if (len < sizeof(struct dtl_entry))
			break;
		len -= len % sizeof(struct dtl_entry);

		/* Check that they have previously registered a VPA */
		err = H_RESOURCE;
		if (!FUNC8(&tvcpu->arch.vpa))
			break;

		vpap = &tvcpu->arch.dtl;
		err = 0;
		break;

	case H_VPA_REG_SLB:		/* register SLB shadow buffer */
		/* Check that they have previously registered a VPA */
		err = H_RESOURCE;
		if (!FUNC8(&tvcpu->arch.vpa))
			break;

		vpap = &tvcpu->arch.slb_shadow;
		err = 0;
		break;

	case H_VPA_DEREG_VPA:		/* deregister VPA */
		/* Check they don't still have a DTL or SLB buf registered */
		err = H_RESOURCE;
		if (FUNC8(&tvcpu->arch.dtl) ||
		    FUNC8(&tvcpu->arch.slb_shadow))
			break;

		vpap = &tvcpu->arch.vpa;
		err = 0;
		break;

	case H_VPA_DEREG_DTL:		/* deregister DTL */
		vpap = &tvcpu->arch.dtl;
		err = 0;
		break;

	case H_VPA_DEREG_SLB:		/* deregister SLB shadow buffer */
		vpap = &tvcpu->arch.slb_shadow;
		err = 0;
		break;
	}

	if (vpap) {
		vpap->next_gpa = vpa;
		vpap->len = len;
		vpap->update_pending = 1;
	}

	FUNC7(&tvcpu->arch.vpa_update_lock);

	return err;
}