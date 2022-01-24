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
struct TYPE_4__ {int /*<<< orphan*/  vgic_sre; } ;
struct TYPE_5__ {TYPE_1__ vgic_v3; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int /*<<< orphan*/  Rt1; scalar_t__ is_write; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,struct coproc_params const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct kvm_vcpu *vcpu,
			   const struct coproc_params *p,
			   const struct coproc_reg *r)
{
	if (p->is_write)
		return FUNC0(vcpu, p);

	*FUNC1(vcpu, p->Rt1) = vcpu->arch.vgic_cpu.vgic_v3.vgic_sre;

	return true;
}