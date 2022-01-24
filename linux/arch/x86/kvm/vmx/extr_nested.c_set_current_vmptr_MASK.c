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
struct TYPE_4__ {int need_vmcs12_to_shadow_sync; int dirty_vmcs12; int /*<<< orphan*/  current_vmptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  shadow_vmcs; } ;
struct vcpu_vmx {TYPE_2__ nested; TYPE_1__ vmcs01; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  SECONDARY_EXEC_SHADOW_VMCS ; 
 int /*<<< orphan*/  VMCS_LINK_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ enable_shadow_vmcs ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vcpu_vmx *vmx, gpa_t vmptr)
{
	vmx->nested.current_vmptr = vmptr;
	if (enable_shadow_vmcs) {
		FUNC1(vmx, SECONDARY_EXEC_SHADOW_VMCS);
		FUNC2(VMCS_LINK_POINTER,
			     FUNC0(vmx->vmcs01.shadow_vmcs));
		vmx->nested.need_vmcs12_to_shadow_sync = true;
	}
	vmx->nested.dirty_vmcs12 = true;
}