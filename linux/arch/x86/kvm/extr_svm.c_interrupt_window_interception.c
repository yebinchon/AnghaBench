
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int irq_window_exits; } ;
struct TYPE_8__ {TYPE_2__ stat; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_3__* vmcb; } ;
struct TYPE_5__ {int int_ctl; } ;
struct TYPE_7__ {TYPE_1__ control; } ;


 int KVM_REQ_EVENT ;
 int VMCB_INTR ;
 int V_IRQ_MASK ;
 int kvm_make_request (int ,TYPE_4__*) ;
 int mark_dirty (TYPE_3__*,int ) ;
 int svm_clear_vintr (struct vcpu_svm*) ;

__attribute__((used)) static int interrupt_window_interception(struct vcpu_svm *svm)
{
 kvm_make_request(KVM_REQ_EVENT, &svm->vcpu);
 svm_clear_vintr(svm);
 svm->vmcb->control.int_ctl &= ~V_IRQ_MASK;
 mark_dirty(svm->vmcb, VMCB_INTR);
 ++svm->vcpu.stat.irq_window_exits;
 return 1;
}
