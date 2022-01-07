
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {int vcpu; TYPE_2__* vmcb; } ;
struct TYPE_3__ {int rip; } ;
struct TYPE_4__ {TYPE_1__ save; } ;


 int UD_VECTOR ;
 int kvm_queue_exception (int *,int ) ;
 int kvm_rax_read (int *) ;
 int trace_kvm_skinit (int ,int ) ;

__attribute__((used)) static int skinit_interception(struct vcpu_svm *svm)
{
 trace_kvm_skinit(svm->vmcb->save.rip, kvm_rax_read(&svm->vcpu));

 kvm_queue_exception(&svm->vcpu, UD_VECTOR);
 return 1;
}
