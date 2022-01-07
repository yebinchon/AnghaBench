
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; scalar_t__ asid_generation; } ;
struct svm_cpu_data {scalar_t__ next_asid; scalar_t__ max_asid; scalar_t__ min_asid; scalar_t__ asid_generation; } ;
struct TYPE_3__ {scalar_t__ asid; int tlb_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int TLB_CONTROL_FLUSH_ALL_ASID ;
 int VMCB_ASID ;
 int mark_dirty (TYPE_2__*,int ) ;

__attribute__((used)) static void new_asid(struct vcpu_svm *svm, struct svm_cpu_data *sd)
{
 if (sd->next_asid > sd->max_asid) {
  ++sd->asid_generation;
  sd->next_asid = sd->min_asid;
  svm->vmcb->control.tlb_ctl = TLB_CONTROL_FLUSH_ALL_ASID;
 }

 svm->asid_generation = sd->asid_generation;
 svm->vmcb->control.asid = sd->next_asid++;

 mark_dirty(svm->vmcb, VMCB_ASID);
}
