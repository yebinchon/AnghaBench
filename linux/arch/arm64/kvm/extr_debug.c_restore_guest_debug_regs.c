
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int mdscr_el1; } ;
struct TYPE_4__ {TYPE_1__ guest_debug_preserved; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int MDSCR_EL1 ;
 int trace_kvm_arm_set_dreg32 (char*,int ) ;
 int vcpu_read_sys_reg (struct kvm_vcpu*,int ) ;
 int vcpu_write_sys_reg (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static void restore_guest_debug_regs(struct kvm_vcpu *vcpu)
{
 u64 val = vcpu->arch.guest_debug_preserved.mdscr_el1;

 vcpu_write_sys_reg(vcpu, val, MDSCR_EL1);

 trace_kvm_arm_set_dreg32("Restored MDSCR_EL1",
    vcpu_read_sys_reg(vcpu, MDSCR_EL1));
}
