
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int switch_db_regs; int * db; int * eff_db; } ;
struct kvm_vcpu {int guest_debug; TYPE_1__ arch; } ;


 int KVM_DEBUGREG_RELOAD ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int KVM_NR_DB_REGS ;

__attribute__((used)) static void kvm_update_dr0123(struct kvm_vcpu *vcpu)
{
 int i;

 if (!(vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP)) {
  for (i = 0; i < KVM_NR_DB_REGS; i++)
   vcpu->arch.eff_db[i] = vcpu->arch.db[i];
  vcpu->arch.switch_db_regs |= KVM_DEBUGREG_RELOAD;
 }
}
