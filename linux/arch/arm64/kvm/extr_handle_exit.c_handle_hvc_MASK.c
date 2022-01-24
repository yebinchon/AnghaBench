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
struct TYPE_2__ {int /*<<< orphan*/  hvc_exit_stat; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	int ret;

	FUNC2(*FUNC4(vcpu), FUNC3(vcpu, 0),
			    FUNC1(vcpu));
	vcpu->stat.hvc_exit_stat++;

	ret = FUNC0(vcpu);
	if (ret < 0) {
		FUNC5(vcpu, 0, ~0UL);
		return 1;
	}

	return ret;
}