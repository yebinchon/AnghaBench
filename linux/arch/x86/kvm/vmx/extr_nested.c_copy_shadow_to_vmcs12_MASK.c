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
struct vmcs12 {int dummy; } ;
struct vmcs {int dummy; } ;
struct TYPE_4__ {struct vmcs* shadow_vmcs; } ;
struct vcpu_vmx {TYPE_1__* loaded_vmcs; int /*<<< orphan*/  vcpu; TYPE_2__ vmcs01; } ;
struct shadow_vmcs_field {int /*<<< orphan*/  offset; int /*<<< orphan*/  encoding; } ;
struct TYPE_3__ {struct vmcs* vmcs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 struct vmcs12* FUNC2 (int /*<<< orphan*/ *) ; 
 int max_shadow_read_write_fields ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct shadow_vmcs_field* shadow_read_write_fields ; 
 int /*<<< orphan*/  FUNC5 (struct vmcs12*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct vmcs*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmcs*) ; 

__attribute__((used)) static void FUNC8(struct vcpu_vmx *vmx)
{
	struct vmcs *shadow_vmcs = vmx->vmcs01.shadow_vmcs;
	struct vmcs12 *vmcs12 = FUNC2(&vmx->vcpu);
	struct shadow_vmcs_field field;
	unsigned long val;
	int i;

	if (FUNC0(!shadow_vmcs))
		return;

	FUNC3();

	FUNC7(shadow_vmcs);

	for (i = 0; i < max_shadow_read_write_fields; i++) {
		field = shadow_read_write_fields[i];
		val = FUNC1(field.encoding);
		FUNC5(vmcs12, field.encoding, field.offset, val);
	}

	FUNC6(shadow_vmcs);
	FUNC7(vmx->loaded_vmcs->vmcs);

	FUNC4();
}