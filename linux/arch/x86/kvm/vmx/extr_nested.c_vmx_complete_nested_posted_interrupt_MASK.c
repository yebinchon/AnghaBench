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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_4__ {void* hva; } ;
struct TYPE_5__ {int pi_pending; TYPE_3__* pi_desc; TYPE_1__ virtual_apic_map; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {scalar_t__ pir; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*,int*) ; 
 int FUNC1 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct vcpu_vmx* FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC4(vcpu);
	int max_irr;
	void *vapic_page;
	u16 status;

	if (!vmx->nested.pi_desc || !vmx->nested.pi_pending)
		return;

	vmx->nested.pi_pending = false;
	if (!FUNC3(vmx->nested.pi_desc))
		return;

	max_irr = FUNC1((unsigned long *)vmx->nested.pi_desc->pir, 256);
	if (max_irr != 256) {
		vapic_page = vmx->nested.virtual_apic_map.hva;
		if (!vapic_page)
			return;

		FUNC0(vmx->nested.pi_desc->pir,
			vapic_page, &max_irr);
		status = FUNC5(GUEST_INTR_STATUS);
		if ((u8)max_irr > ((u8)status & 0xff)) {
			status &= ~0xff;
			status |= (u8)max_irr;
			FUNC6(GUEST_INTR_STATUS, status);
		}
	}

	FUNC2(vcpu);
}