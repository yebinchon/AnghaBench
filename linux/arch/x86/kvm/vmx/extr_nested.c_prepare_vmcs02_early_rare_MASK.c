#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmcs12 {int dummy; } ;
struct TYPE_2__ {scalar_t__ vpid02; } ;
struct vcpu_vmx {scalar_t__ vpid; TYPE_1__ nested; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTUAL_PROCESSOR_ID ; 
 int /*<<< orphan*/  VMCS_LINK_POINTER ; 
 scalar_t__ enable_vpid ; 
 scalar_t__ FUNC0 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC4(struct vcpu_vmx *vmx,
				      struct vmcs12 *vmcs12)
{
	FUNC1(vmx);

	FUNC3(VMCS_LINK_POINTER, -1ull);

	if (enable_vpid) {
		if (FUNC0(vmcs12) && vmx->nested.vpid02)
			FUNC2(VIRTUAL_PROCESSOR_ID, vmx->nested.vpid02);
		else
			FUNC2(VIRTUAL_PROCESSOR_ID, vmx->vpid);
	}
}