
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kvm; } ;
struct vcpu_svm {int last_cpu; TYPE_3__* vmcb; TYPE_2__ vcpu; } ;
struct svm_cpu_data {TYPE_3__** sev_vmcbs; } ;
struct TYPE_4__ {int asid; int tlb_ctl; } ;
struct TYPE_6__ {TYPE_1__ control; } ;


 int TLB_CONTROL_FLUSH_ASID ;
 int VMCB_ASID ;
 int mark_dirty (TYPE_3__*,int ) ;
 struct svm_cpu_data* per_cpu (int ,int) ;
 int sev_get_asid (int ) ;
 int svm_data ;

__attribute__((used)) static void pre_sev_run(struct vcpu_svm *svm, int cpu)
{
 struct svm_cpu_data *sd = per_cpu(svm_data, cpu);
 int asid = sev_get_asid(svm->vcpu.kvm);


 svm->vmcb->control.asid = asid;







 if (sd->sev_vmcbs[asid] == svm->vmcb &&
     svm->last_cpu == cpu)
  return;

 svm->last_cpu = cpu;
 sd->sev_vmcbs[asid] = svm->vmcb;
 svm->vmcb->control.tlb_ctl = TLB_CONTROL_FLUSH_ASID;
 mark_dirty(svm->vmcb, VMCB_ASID);
}
