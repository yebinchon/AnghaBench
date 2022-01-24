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
typedef  int u16 ;
struct vcpu_vmx {int /*<<< orphan*/  pml_pg; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_PML_INDEX ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PML_ENTITY_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC3(vcpu);
	u64 *pml_buf;
	u16 pml_idx;

	pml_idx = FUNC4(GUEST_PML_INDEX);

	/* Do nothing if PML buffer is empty */
	if (pml_idx == (PML_ENTITY_NUM - 1))
		return;

	/* PML index always points to next available PML buffer entity */
	if (pml_idx >= PML_ENTITY_NUM)
		pml_idx = 0;
	else
		pml_idx++;

	pml_buf = FUNC2(vmx->pml_pg);
	for (; pml_idx < PML_ENTITY_NUM; pml_idx++) {
		u64 gpa;

		gpa = pml_buf[pml_idx];
		FUNC0(gpa & (PAGE_SIZE - 1));
		FUNC1(vcpu, gpa >> PAGE_SHIFT);
	}

	/* reset PML index */
	FUNC5(GUEST_PML_INDEX, PML_ENTITY_NUM - 1);
}