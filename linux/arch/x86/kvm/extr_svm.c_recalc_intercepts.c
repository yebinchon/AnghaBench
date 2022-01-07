
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcb_control_area {int intercept_cr; int intercept_dr; int intercept_exceptions; int intercept; } ;
struct nested_state {int intercept_cr; int intercept_dr; int intercept_exceptions; int intercept; TYPE_1__* hsave; } ;
struct vcpu_svm {struct nested_state nested; TYPE_2__* vmcb; int vcpu; } ;
struct TYPE_4__ {struct vmcb_control_area control; } ;
struct TYPE_3__ {struct vmcb_control_area control; } ;


 int VMCB_INTERCEPTS ;
 int is_guest_mode (int *) ;
 int mark_dirty (TYPE_2__*,int ) ;

__attribute__((used)) static void recalc_intercepts(struct vcpu_svm *svm)
{
 struct vmcb_control_area *c, *h;
 struct nested_state *g;

 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);

 if (!is_guest_mode(&svm->vcpu))
  return;

 c = &svm->vmcb->control;
 h = &svm->nested.hsave->control;
 g = &svm->nested;

 c->intercept_cr = h->intercept_cr | g->intercept_cr;
 c->intercept_dr = h->intercept_dr | g->intercept_dr;
 c->intercept_exceptions = h->intercept_exceptions | g->intercept_exceptions;
 c->intercept = h->intercept | g->intercept;
}
