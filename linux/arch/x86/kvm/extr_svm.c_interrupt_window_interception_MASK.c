#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  irq_window_exits; } ;
struct TYPE_8__ {TYPE_2__ stat; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_3__* vmcb; } ;
struct TYPE_5__ {int /*<<< orphan*/  int_ctl; } ;
struct TYPE_7__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  VMCB_INTR ; 
 int /*<<< orphan*/  V_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_svm*) ; 

__attribute__((used)) static int FUNC3(struct vcpu_svm *svm)
{
	FUNC0(KVM_REQ_EVENT, &svm->vcpu);
	FUNC2(svm);
	svm->vmcb->control.int_ctl &= ~V_IRQ_MASK;
	FUNC1(svm->vmcb, VMCB_INTR);
	++svm->vcpu.stat.irq_window_exits;
	return 1;
}