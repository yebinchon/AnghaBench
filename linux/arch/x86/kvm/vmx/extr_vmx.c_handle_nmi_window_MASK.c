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
struct TYPE_2__ {int /*<<< orphan*/  nmi_window_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_BASED_VIRTUAL_NMI_PENDING ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  enable_vnmi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	FUNC0(!enable_vnmi);
	FUNC1(FUNC3(vcpu), CPU_BASED_VIRTUAL_NMI_PENDING);
	++vcpu->stat.nmi_window_exits;
	FUNC2(KVM_REQ_EVENT, vcpu);

	return 1;
}