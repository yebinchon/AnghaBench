#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmcb_control_area {int intercept_cr; int intercept_dr; int intercept_exceptions; int intercept; } ;
struct nested_state {int intercept_cr; int intercept_dr; int intercept_exceptions; int intercept; TYPE_1__* hsave; } ;
struct vcpu_svm {struct nested_state nested; TYPE_2__* vmcb; int /*<<< orphan*/  vcpu; } ;
struct TYPE_4__ {struct vmcb_control_area control; } ;
struct TYPE_3__ {struct vmcb_control_area control; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCB_INTERCEPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vcpu_svm *svm)
{
	struct vmcb_control_area *c, *h;
	struct nested_state *g;

	FUNC1(svm->vmcb, VMCB_INTERCEPTS);

	if (!FUNC0(&svm->vcpu))
		return;

	c = &svm->vmcb->control;
	h = &svm->nested.hsave->control;
	g = &svm->nested;

	c->intercept_cr = h->intercept_cr | g->intercept_cr;
	c->intercept_dr = h->intercept_dr | g->intercept_dr;
	c->intercept_exceptions = h->intercept_exceptions | g->intercept_exceptions;
	c->intercept = h->intercept | g->intercept;
}