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
struct kvm_vcpu {int /*<<< orphan*/  srcu_idx; TYPE_1__* kvm; } ;
struct TYPE_2__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMULTYPE_NO_DECODE ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct kvm_vcpu *vcpu)
{
	int r;

	vcpu->srcu_idx = FUNC1(&vcpu->kvm->srcu);
	r = FUNC0(vcpu, EMULTYPE_NO_DECODE);
	FUNC2(&vcpu->kvm->srcu, vcpu->srcu_idx);
	return r;
}