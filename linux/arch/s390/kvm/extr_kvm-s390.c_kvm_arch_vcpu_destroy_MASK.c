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
struct TYPE_4__ {scalar_t__ sie_block; int /*<<< orphan*/  gmap; } ;
struct kvm_vcpu {TYPE_1__ arch; TYPE_3__* kvm; int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_5__ {scalar_t__ use_cmma; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct kvm_vcpu *vcpu)
{
	FUNC0(vcpu, 3, "%s", "free cpu");
	FUNC10(vcpu->vcpu_id);
	FUNC6(vcpu);
	FUNC4(vcpu);
	if (!FUNC5(vcpu->kvm))
		FUNC9(vcpu);

	if (FUNC5(vcpu->kvm))
		FUNC2(vcpu->arch.gmap);

	if (vcpu->kvm->arch.use_cmma)
		FUNC7(vcpu);
	FUNC1((unsigned long)(vcpu->arch.sie_block));

	FUNC8(vcpu);
	FUNC3(kvm_vcpu_cache, vcpu);
}