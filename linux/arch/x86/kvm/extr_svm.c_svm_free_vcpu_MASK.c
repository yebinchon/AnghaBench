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
struct TYPE_5__ {struct vcpu_svm* guest_fpu; struct vcpu_svm* user_fpu; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  msrpm; int /*<<< orphan*/  hsave; } ;
struct vcpu_svm {TYPE_3__ vcpu; TYPE_1__ nested; int /*<<< orphan*/  msrpm; int /*<<< orphan*/  vmcb_pa; int /*<<< orphan*/  vmcb; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSRPM_ALLOC_ORDER ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vcpu_svm*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x86_fpu_cache ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC7(vcpu);

	/*
	 * The vmcb page can be recycled, causing a false negative in
	 * svm_vcpu_load(). So, ensure that no logical CPU has this
	 * vmcb page recorded as its current vmcb.
	 */
	FUNC6(svm->vmcb);

	FUNC0(FUNC5(FUNC2(svm->vmcb_pa) >> PAGE_SHIFT));
	FUNC1(FUNC8(svm->msrpm), MSRPM_ALLOC_ORDER);
	FUNC0(FUNC8(svm->nested.hsave));
	FUNC1(FUNC8(svm->nested.msrpm), MSRPM_ALLOC_ORDER);
	FUNC4(vcpu);
	FUNC3(x86_fpu_cache, svm->vcpu.arch.user_fpu);
	FUNC3(x86_fpu_cache, svm->vcpu.arch.guest_fpu);
	FUNC3(kvm_vcpu_cache, svm);
}