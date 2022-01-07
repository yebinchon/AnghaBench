
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int insn_emulation_fail; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_1__ stat; } ;
struct TYPE_8__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;
struct TYPE_6__ {scalar_t__ ndata; void* suberror; } ;
struct TYPE_7__ {TYPE_2__ internal; void* exit_reason; } ;


 int EMULTYPE_SKIP ;
 int EMULTYPE_VMWARE_GP ;
 int GP_VECTOR ;
 void* KVM_EXIT_INTERNAL_ERROR ;
 void* KVM_INTERNAL_ERROR_EMULATION ;
 int UD_VECTOR ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_queue_exception_e (struct kvm_vcpu*,int ,int ) ;
 TYPE_4__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 int trace_kvm_emulate_insn_failed (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_emulation_failure(struct kvm_vcpu *vcpu, int emulation_type)
{
 ++vcpu->stat.insn_emulation_fail;
 trace_kvm_emulate_insn_failed(vcpu);

 if (emulation_type & EMULTYPE_VMWARE_GP) {
  kvm_queue_exception_e(vcpu, GP_VECTOR, 0);
  return 1;
 }

 if (emulation_type & EMULTYPE_SKIP) {
  vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  vcpu->run->internal.suberror = KVM_INTERNAL_ERROR_EMULATION;
  vcpu->run->internal.ndata = 0;
  return 0;
 }

 kvm_queue_exception(vcpu, UD_VECTOR);

 if (!is_guest_mode(vcpu) && kvm_x86_ops->get_cpl(vcpu) == 0) {
  vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  vcpu->run->internal.suberror = KVM_INTERNAL_ERROR_EMULATION;
  vcpu->run->internal.ndata = 0;
  return 0;
 }

 return 1;
}
