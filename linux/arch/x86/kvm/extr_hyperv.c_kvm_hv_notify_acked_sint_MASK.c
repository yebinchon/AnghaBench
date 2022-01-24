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
typedef  size_t u32 ;
struct kvm_vcpu_hv_synic {int /*<<< orphan*/ * sint_to_gsi; } ;
struct TYPE_2__ {size_t sintx; int /*<<< orphan*/  direct_mode; scalar_t__ enable; } ;
struct kvm_vcpu_hv_stimer {TYPE_1__ config; scalar_t__ msg_pending; } ;
struct kvm_vcpu_hv {struct kvm_vcpu_hv_stimer* stimer; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  irq_srcu; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu_hv_stimer*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu_hv_stimer*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 struct kvm_vcpu_hv* FUNC7 (struct kvm_vcpu*) ; 
 struct kvm_vcpu_hv_synic* FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu, u32 sint)
{
	struct kvm *kvm = vcpu->kvm;
	struct kvm_vcpu_hv_synic *synic = FUNC8(vcpu);
	struct kvm_vcpu_hv *hv_vcpu = FUNC7(vcpu);
	struct kvm_vcpu_hv_stimer *stimer;
	int gsi, idx;

	FUNC6(vcpu->vcpu_id, sint);

	/* Try to deliver pending Hyper-V SynIC timers messages */
	for (idx = 0; idx < FUNC0(hv_vcpu->stimer); idx++) {
		stimer = &hv_vcpu->stimer[idx];
		if (stimer->msg_pending && stimer->config.enable &&
		    !stimer->config.direct_mode &&
		    stimer->config.sintx == sint)
			FUNC5(stimer, false);
	}

	idx = FUNC3(&kvm->irq_srcu);
	gsi = FUNC1(&synic->sint_to_gsi[sint]);
	if (gsi != -1)
		FUNC2(kvm, gsi);
	FUNC4(&kvm->irq_srcu, idx);
}