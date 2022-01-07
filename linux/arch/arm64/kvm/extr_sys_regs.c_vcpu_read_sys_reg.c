
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sysregs_loaded_on_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
 int SYS_ACTLR_EL1 ;
 int SYS_AFSR0_EL12 ;
 int SYS_AFSR1_EL12 ;
 int SYS_AMAIR_EL12 ;
 int SYS_CNTKCTL_EL12 ;
 int SYS_CONTEXTIDR_EL12 ;
 int SYS_CPACR_EL12 ;
 int SYS_CSSELR_EL1 ;
 int SYS_DACR32_EL2 ;
 int SYS_DBGVCR32_EL2 ;
 int SYS_ESR_EL12 ;
 int SYS_FAR_EL12 ;
 int SYS_IFSR32_EL2 ;
 int SYS_MAIR_EL12 ;
 int SYS_PAR_EL1 ;
 int SYS_SCTLR_EL12 ;
 int SYS_TCR_EL12 ;
 int SYS_TPIDRRO_EL0 ;
 int SYS_TPIDR_EL0 ;
 int SYS_TPIDR_EL1 ;
 int SYS_TTBR0_EL12 ;
 int SYS_TTBR1_EL12 ;
 int SYS_VBAR_EL12 ;







 int __vcpu_sys_reg (struct kvm_vcpu const*,int) ;
 int read_sysreg_s (int ) ;

u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
{
 if (!vcpu->arch.sysregs_loaded_on_cpu)
  goto immediate_read;
 switch (reg) {
 case 143: return read_sysreg_s(SYS_CSSELR_EL1);
 case 135: return read_sysreg_s(SYS_SCTLR_EL12);
 case 150: return read_sysreg_s(SYS_ACTLR_EL1);
 case 144: return read_sysreg_s(SYS_CPACR_EL12);
 case 130: return read_sysreg_s(SYS_TTBR0_EL12);
 case 129: return read_sysreg_s(SYS_TTBR1_EL12);
 case 134: return read_sysreg_s(SYS_TCR_EL12);
 case 140: return read_sysreg_s(SYS_ESR_EL12);
 case 149: return read_sysreg_s(SYS_AFSR0_EL12);
 case 148: return read_sysreg_s(SYS_AFSR1_EL12);
 case 139: return read_sysreg_s(SYS_FAR_EL12);
 case 137: return read_sysreg_s(SYS_MAIR_EL12);
 case 128: return read_sysreg_s(SYS_VBAR_EL12);
 case 145: return read_sysreg_s(SYS_CONTEXTIDR_EL12);
 case 132: return read_sysreg_s(SYS_TPIDR_EL0);
 case 133: return read_sysreg_s(SYS_TPIDRRO_EL0);
 case 131: return read_sysreg_s(SYS_TPIDR_EL1);
 case 147: return read_sysreg_s(SYS_AMAIR_EL12);
 case 146: return read_sysreg_s(SYS_CNTKCTL_EL12);
 case 136: return read_sysreg_s(SYS_PAR_EL1);
 case 142: return read_sysreg_s(SYS_DACR32_EL2);
 case 138: return read_sysreg_s(SYS_IFSR32_EL2);
 case 141: return read_sysreg_s(SYS_DBGVCR32_EL2);
 }

immediate_read:
 return __vcpu_sys_reg(vcpu, reg);
}
