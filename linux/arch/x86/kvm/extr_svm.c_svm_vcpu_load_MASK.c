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
typedef  scalar_t__ u64 ;
struct TYPE_3__ {int /*<<< orphan*/  ldt; int /*<<< orphan*/  gs; int /*<<< orphan*/  fs; int /*<<< orphan*/  gs_base; } ;
struct vcpu_svm {scalar_t__ vmcb; scalar_t__ tsc_aux; int /*<<< orphan*/ * host_user_msrs; TYPE_1__ host; scalar_t__ asid_generation; } ;
struct svm_cpu_data {scalar_t__ current_vmcb; } ;
struct TYPE_4__ {scalar_t__ tsc_scaling_ratio; } ;
struct kvm_vcpu {int cpu; TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_AMD64_TSC_RATIO ; 
 int /*<<< orphan*/  MSR_GS_BASE ; 
 int /*<<< orphan*/  MSR_TSC_AUX ; 
 int NR_HOST_SAVE_USER_MSRS ; 
 int /*<<< orphan*/  X86_FEATURE_RDTSCP ; 
 int /*<<< orphan*/  X86_FEATURE_TSCRATEMSR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  current_tsc_ratio ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  gs ; 
 int /*<<< orphan*/ * host_save_user_msrs ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct svm_cpu_data* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svm_data ; 
 struct vcpu_svm* FUNC10 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct kvm_vcpu *vcpu, int cpu)
{
	struct vcpu_svm *svm = FUNC10(vcpu);
	struct svm_cpu_data *sd = FUNC6(svm_data, cpu);
	int i;

	if (FUNC11(cpu != vcpu->cpu)) {
		svm->asid_generation = 0;
		FUNC5(svm->vmcb);
	}

#ifdef CONFIG_X86_64
	rdmsrl(MSR_GS_BASE, to_svm(vcpu)->host.gs_base);
#endif
	FUNC8(fs, svm->host.fs);
	FUNC8(gs, svm->host.gs);
	svm->host.ldt = FUNC4();

	for (i = 0; i < NR_HOST_SAVE_USER_MSRS; i++)
		FUNC7(host_save_user_msrs[i], svm->host_user_msrs[i]);

	if (FUNC9(X86_FEATURE_TSCRATEMSR)) {
		u64 tsc_ratio = vcpu->arch.tsc_scaling_ratio;
		if (tsc_ratio != FUNC0(current_tsc_ratio)) {
			FUNC1(current_tsc_ratio, tsc_ratio);
			FUNC12(MSR_AMD64_TSC_RATIO, tsc_ratio);
		}
	}
	/* This assumes that the kernel never uses MSR_TSC_AUX */
	if (FUNC9(X86_FEATURE_RDTSCP))
		FUNC12(MSR_TSC_AUX, svm->tsc_aux);

	if (sd->current_vmcb != svm->vmcb) {
		sd->current_vmcb = svm->vmcb;
		FUNC3();
	}
	FUNC2(vcpu, cpu);
}