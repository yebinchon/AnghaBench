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
struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int /*<<< orphan*/  Rt1; scalar_t__ is_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  c1_ACTLR ; 
 int FUNC0 (struct kvm_vcpu*,struct coproc_params const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu,
			 const struct coproc_params *p,
			 const struct coproc_reg *r)
{
	if (p->is_write)
		return FUNC0(vcpu, p);

	*FUNC2(vcpu, p->Rt1) = FUNC1(vcpu, c1_ACTLR);
	return true;
}