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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct kvm* kvm; } ;
struct vcpu_svm {int /*<<< orphan*/  ir_list_lock; int /*<<< orphan*/  ir_list; TYPE_1__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;
struct amd_svm_iommu_ir {int /*<<< orphan*/  node; scalar_t__ data; } ;
struct amd_iommu_pi_data {scalar_t__ prev_ga_tag; scalar_t__ ir_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 struct kvm_vcpu* FUNC1 (struct kvm*,int /*<<< orphan*/ ) ; 
 struct amd_svm_iommu_ir* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct vcpu_svm*,struct amd_iommu_pi_data*) ; 
 struct vcpu_svm* FUNC7 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC8(struct vcpu_svm *svm, struct amd_iommu_pi_data *pi)
{
	int ret = 0;
	unsigned long flags;
	struct amd_svm_iommu_ir *ir;

	/**
	 * In some cases, the existing irte is updaed and re-set,
	 * so we need to check here if it's already been * added
	 * to the ir_list.
	 */
	if (pi->ir_data && (pi->prev_ga_tag != 0)) {
		struct kvm *kvm = svm->vcpu.kvm;
		u32 vcpu_id = FUNC0(pi->prev_ga_tag);
		struct kvm_vcpu *prev_vcpu = FUNC1(kvm, vcpu_id);
		struct vcpu_svm *prev_svm;

		if (!prev_vcpu) {
			ret = -EINVAL;
			goto out;
		}

		prev_svm = FUNC7(prev_vcpu);
		FUNC6(prev_svm, pi);
	}

	/**
	 * Allocating new amd_iommu_pi_data, which will get
	 * add to the per-vcpu ir_list.
	 */
	ir = FUNC2(sizeof(struct amd_svm_iommu_ir), GFP_KERNEL_ACCOUNT);
	if (!ir) {
		ret = -ENOMEM;
		goto out;
	}
	ir->data = pi->ir_data;

	FUNC4(&svm->ir_list_lock, flags);
	FUNC3(&ir->node, &svm->ir_list);
	FUNC5(&svm->ir_list_lock, flags);
out:
	return ret;
}