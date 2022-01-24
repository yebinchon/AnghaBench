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
struct vmcs_host_state {int /*<<< orphan*/  es_sel; int /*<<< orphan*/  ds_sel; int /*<<< orphan*/  ldt_sel; int /*<<< orphan*/  gs_base; int /*<<< orphan*/  fs_base; int /*<<< orphan*/  gs_sel; int /*<<< orphan*/  fs_sel; } ;
struct vcpu_vmx {TYPE_1__* loaded_vmcs; int /*<<< orphan*/  guest_state_loaded; } ;
struct loaded_vmcs {struct vmcs_host_state host_state; } ;
struct TYPE_2__ {struct vmcs_host_state host_state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmcs_host_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vcpu_vmx *vmx,
				     struct loaded_vmcs *prev)
{
	struct vmcs_host_state *dest, *src;

	if (FUNC0(!vmx->guest_state_loaded))
		return;

	src = &prev->host_state;
	dest = &vmx->loaded_vmcs->host_state;

	FUNC1(dest, src->fs_sel, src->gs_sel, src->fs_base, src->gs_base);
	dest->ldt_sel = src->ldt_sel;
#ifdef CONFIG_X86_64
	dest->ds_sel = src->ds_sel;
	dest->es_sel = src->es_sel;
#endif
}