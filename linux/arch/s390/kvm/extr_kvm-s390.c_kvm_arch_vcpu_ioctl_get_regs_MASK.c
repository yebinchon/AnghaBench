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
struct kvm_vcpu {TYPE_3__* run; } ;
struct kvm_regs {int /*<<< orphan*/  gprs; } ;
struct TYPE_4__ {int /*<<< orphan*/  gprs; } ;
struct TYPE_5__ {TYPE_1__ regs; } ;
struct TYPE_6__ {TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	FUNC1(vcpu);
	FUNC0(&regs->gprs, &vcpu->run->s.regs.gprs, sizeof(regs->gprs));
	FUNC2(vcpu);
	return 0;
}