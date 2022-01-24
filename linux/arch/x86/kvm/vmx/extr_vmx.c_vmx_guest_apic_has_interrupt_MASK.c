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
typedef  int u32 ;
struct TYPE_3__ {void* hva; int /*<<< orphan*/  gfn; } ;
struct TYPE_4__ {TYPE_1__ virtual_apic_map; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int APIC_PROCPRI ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 () ; 

__attribute__((used)) static bool FUNC6(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC4(vcpu);
	void *vapic_page;
	u32 vppr;
	int rvi;

	if (FUNC0(!FUNC2(vcpu)) ||
		!FUNC3(FUNC1(vcpu)) ||
		FUNC0(!vmx->nested.virtual_apic_map.gfn))
		return false;

	rvi = FUNC5();

	vapic_page = vmx->nested.virtual_apic_map.hva;
	vppr = *((u32 *)(vapic_page + APIC_PROCPRI));

	return ((rvi & 0xf0) > (vppr & 0xf0));
}