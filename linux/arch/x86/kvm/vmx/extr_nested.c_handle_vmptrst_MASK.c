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
typedef  int /*<<< orphan*/  u32 ;
struct x86_exception {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_3__ {int /*<<< orphan*/  hv_evmcs; int /*<<< orphan*/  current_vmptr; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int /*<<< orphan*/  VMX_INSTRUCTION_INFO ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct x86_exception*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,void*,int,struct x86_exception*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 TYPE_2__* FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu)
{
	unsigned long exit_qual = FUNC8(EXIT_QUALIFICATION);
	u32 instr_info = FUNC7(VMX_INSTRUCTION_INFO);
	gpa_t current_vmptr = FUNC5(vcpu)->nested.current_vmptr;
	struct x86_exception e;
	gva_t gva;

	if (!FUNC3(vcpu))
		return 1;

	if (FUNC6(FUNC5(vcpu)->nested.hv_evmcs))
		return 1;

	if (FUNC0(vcpu, exit_qual, instr_info,
				true, sizeof(gpa_t), &gva))
		return 1;
	/* *_system ok, nested_vmx_check_permission has verified cpl=0 */
	if (FUNC2(vcpu, gva, (void *)&current_vmptr,
					sizeof(gpa_t), &e)) {
		FUNC1(vcpu, &e);
		return 1;
	}
	return FUNC4(vcpu);
}