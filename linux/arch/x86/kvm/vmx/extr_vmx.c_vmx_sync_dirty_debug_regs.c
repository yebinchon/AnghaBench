
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int switch_db_regs; int dr7; int dr6; int * db; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CPU_BASED_MOV_DR_EXITING ;
 int GUEST_DR7 ;
 int KVM_DEBUGREG_WONT_EXIT ;
 int exec_controls_setbit (int ,int ) ;
 int get_debugreg (int ,int) ;
 int to_vmx (struct kvm_vcpu*) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_sync_dirty_debug_regs(struct kvm_vcpu *vcpu)
{
 get_debugreg(vcpu->arch.db[0], 0);
 get_debugreg(vcpu->arch.db[1], 1);
 get_debugreg(vcpu->arch.db[2], 2);
 get_debugreg(vcpu->arch.db[3], 3);
 get_debugreg(vcpu->arch.dr6, 6);
 vcpu->arch.dr7 = vmcs_readl(GUEST_DR7);

 vcpu->arch.switch_db_regs &= ~KVM_DEBUGREG_WONT_EXIT;
 exec_controls_setbit(to_vmx(vcpu), CPU_BASED_MOV_DR_EXITING);
}
