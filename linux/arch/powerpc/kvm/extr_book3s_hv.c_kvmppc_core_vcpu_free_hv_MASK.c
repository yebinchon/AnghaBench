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
struct TYPE_2__ {int /*<<< orphan*/  vpa_update_lock; int /*<<< orphan*/  vpa; int /*<<< orphan*/  slb_shadow; int /*<<< orphan*/  dtl; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu)
{
	FUNC2(&vcpu->arch.vpa_update_lock);
	FUNC4(vcpu->kvm, &vcpu->arch.dtl);
	FUNC4(vcpu->kvm, &vcpu->arch.slb_shadow);
	FUNC4(vcpu->kvm, &vcpu->arch.vpa);
	FUNC3(&vcpu->arch.vpa_update_lock);
	FUNC1(vcpu);
	FUNC0(kvm_vcpu_cache, vcpu);
}