
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned long paddr_accessed; int vaddr_accessed; } ;
struct kvm_vcpu {TYPE_1__ arch; TYPE_2__* kvm; } ;
struct kvm_run {int dummy; } ;
typedef int gva_t ;
typedef int gpa_t ;
struct TYPE_4__ {int srcu; } ;


 scalar_t__ EMULATE_DONE ;
 int INST_GENERIC ;
 int KVM_FAST_MMIO_BUS ;
 int RESUME_GUEST ;
 int instruction_is_store (int ) ;
 int kvm_io_bus_write (struct kvm_vcpu*,int ,int ,int ,int *) ;
 int kvmppc_emulate_mmio (struct kvm_run*,struct kvm_vcpu*) ;
 scalar_t__ kvmppc_get_last_inst (struct kvm_vcpu*,int ,int *) ;
 scalar_t__ kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_set_pc (struct kvm_vcpu*,scalar_t__) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int kvmppc_hv_emulate_mmio(struct kvm_run *run, struct kvm_vcpu *vcpu,
      unsigned long gpa, gva_t ea, int is_store)
{
 u32 last_inst;






 if (is_store) {
  int idx, ret;

  idx = srcu_read_lock(&vcpu->kvm->srcu);
  ret = kvm_io_bus_write(vcpu, KVM_FAST_MMIO_BUS, (gpa_t) gpa, 0,
           ((void*)0));
  srcu_read_unlock(&vcpu->kvm->srcu, idx);
  if (!ret) {
   kvmppc_set_pc(vcpu, kvmppc_get_pc(vcpu) + 4);
   return RESUME_GUEST;
  }
 }




 if (kvmppc_get_last_inst(vcpu, INST_GENERIC, &last_inst) !=
  EMULATE_DONE)
  return RESUME_GUEST;
 if (instruction_is_store(last_inst) != !!is_store)
  return RESUME_GUEST;
 vcpu->arch.paddr_accessed = gpa;
 vcpu->arch.vaddr_accessed = ea;
 return kvmppc_emulate_mmio(run, vcpu);
}
