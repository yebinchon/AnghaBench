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
struct TYPE_3__ {int /*<<< orphan*/  wbinvd_dirty_mask; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ (* has_wbinvd_exit ) () ;} ;

/* Variables and functions */
 int X86EMUL_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  wbinvd_ipi ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu)
{
	if (!FUNC3(vcpu))
		return X86EMUL_CONTINUE;

	if (kvm_x86_ops->has_wbinvd_exit()) {
		int cpu = FUNC2();

		FUNC1(cpu, vcpu->arch.wbinvd_dirty_mask);
		FUNC5(vcpu->arch.wbinvd_dirty_mask,
				wbinvd_ipi, NULL, 1);
		FUNC4();
		FUNC0(vcpu->arch.wbinvd_dirty_mask);
	} else
		FUNC7();
	return X86EMUL_CONTINUE;
}