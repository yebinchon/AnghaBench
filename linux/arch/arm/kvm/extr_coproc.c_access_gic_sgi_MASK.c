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
struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int Op1; int /*<<< orphan*/  Rt1; int /*<<< orphan*/  Rt2; int /*<<< orphan*/  is_write; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,struct coproc_params const*) ; 
 int* FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int,int) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu,
			   const struct coproc_params *p,
			   const struct coproc_reg *r)
{
	u64 reg;
	bool g1;

	if (!p->is_write)
		return FUNC0(vcpu, p);

	reg = (u64)*FUNC1(vcpu, p->Rt2) << 32;
	reg |= *FUNC1(vcpu, p->Rt1) ;

	/*
	 * In a system where GICD_CTLR.DS=1, a ICC_SGI0R access generates
	 * Group0 SGIs only, while ICC_SGI1R can generate either group,
	 * depending on the SGI configuration. ICC_ASGI1R is effectively
	 * equivalent to ICC_SGI0R, as there is no "alternative" secure
	 * group.
	 */
	switch (p->Op1) {
	default:		/* Keep GCC quiet */
	case 0:			/* ICC_SGI1R */
		g1 = true;
		break;
	case 1:			/* ICC_ASGI1R */
	case 2:			/* ICC_SGI0R */
		g1 = false;
		break;
	}

	FUNC2(vcpu, reg, g1);

	return true;
}