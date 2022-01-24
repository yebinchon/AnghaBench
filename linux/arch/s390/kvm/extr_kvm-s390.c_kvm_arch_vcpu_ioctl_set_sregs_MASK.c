#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* sie_block; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_3__* run; } ;
struct kvm_sregs {int /*<<< orphan*/  crs; int /*<<< orphan*/  acrs; } ;
struct TYPE_9__ {int /*<<< orphan*/  gcr; } ;
struct TYPE_6__ {int /*<<< orphan*/  acrs; } ;
struct TYPE_7__ {TYPE_1__ regs; } ;
struct TYPE_8__ {TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu,
				  struct kvm_sregs *sregs)
{
	FUNC1(vcpu);

	FUNC0(&vcpu->run->s.regs.acrs, &sregs->acrs, sizeof(sregs->acrs));
	FUNC0(&vcpu->arch.sie_block->gcr, &sregs->crs, sizeof(sregs->crs));

	FUNC2(vcpu);
	return 0;
}