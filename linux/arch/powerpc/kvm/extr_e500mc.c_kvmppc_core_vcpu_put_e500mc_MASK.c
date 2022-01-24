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
struct TYPE_4__ {void* oldpir; TYPE_1__* shared; void* epr; void* epsc; void* eplc; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {void* esr; void* dar; void* srr1; void* srr0; void* sprg3; void* sprg2; void* sprg1; void* sprg0; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_EPLC ; 
 int /*<<< orphan*/  SPRN_EPSC ; 
 int /*<<< orphan*/  SPRN_GDEAR ; 
 int /*<<< orphan*/  SPRN_GEPR ; 
 int /*<<< orphan*/  SPRN_GESR ; 
 int /*<<< orphan*/  SPRN_GSPRG0 ; 
 int /*<<< orphan*/  SPRN_GSPRG1 ; 
 int /*<<< orphan*/  SPRN_GSPRG2 ; 
 int /*<<< orphan*/  SPRN_GSPRG3 ; 
 int /*<<< orphan*/  SPRN_GSRR0 ; 
 int /*<<< orphan*/  SPRN_GSRR1 ; 
 int /*<<< orphan*/  SPRN_PIR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	vcpu->arch.eplc = FUNC1(SPRN_EPLC);
	vcpu->arch.epsc = FUNC1(SPRN_EPSC);

	vcpu->arch.shared->sprg0 = FUNC1(SPRN_GSPRG0);
	vcpu->arch.shared->sprg1 = FUNC1(SPRN_GSPRG1);
	vcpu->arch.shared->sprg2 = FUNC1(SPRN_GSPRG2);
	vcpu->arch.shared->sprg3 = FUNC1(SPRN_GSPRG3);

	vcpu->arch.shared->srr0 = FUNC1(SPRN_GSRR0);
	vcpu->arch.shared->srr1 = FUNC1(SPRN_GSRR1);

	vcpu->arch.epr = FUNC1(SPRN_GEPR);
	vcpu->arch.shared->dar = FUNC1(SPRN_GDEAR);
	vcpu->arch.shared->esr = FUNC1(SPRN_GESR);

	vcpu->arch.oldpir = FUNC1(SPRN_PIR);

	FUNC0(vcpu);
}