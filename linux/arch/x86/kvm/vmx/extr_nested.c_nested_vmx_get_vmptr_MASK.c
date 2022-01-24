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
struct x86_exception {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int /*<<< orphan*/  VMX_INSTRUCTION_INFO ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct x86_exception*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct x86_exception*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu, gpa_t *vmpointer)
{
	gva_t gva;
	struct x86_exception e;

	if (FUNC0(vcpu, FUNC4(EXIT_QUALIFICATION),
				FUNC3(VMX_INSTRUCTION_INFO), false,
				sizeof(*vmpointer), &gva))
		return 1;

	if (FUNC2(vcpu, gva, vmpointer, sizeof(*vmpointer), &e)) {
		FUNC1(vcpu, &e);
		return 1;
	}

	return 0;
}