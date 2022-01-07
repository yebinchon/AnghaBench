
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_7__ {int nip; int ccr; } ;
struct TYPE_6__ {int srr1; int msr; int srr0; } ;
struct TYPE_8__ {int emul_inst; int hfscr; TYPE_3__ regs; TYPE_2__ shregs; TYPE_1__* vcore; int cfar; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_5__ {int pcr; } ;


 int BESCR_GE ;
 int FSCR_EBB ;
 int HFSCR_EBB ;
 int HFSCR_TM ;
 int MSR_LE ;
 int MSR_PR ;
 int MSR_TM ;
 int MSR_TM_TRANSACTIONAL (int) ;
 int MSR_TS_MASK ;
 int MSR_TS_T ;
 int PCR_ARCH_206 ;




 int SPRN_BESCR ;
 int SPRN_EBBRR ;
 int SPRN_FSCR ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int sanitize_msr (int) ;

int kvmhv_p9_tm_emulation_early(struct kvm_vcpu *vcpu)
{
 u32 instr = vcpu->arch.emul_inst;
 u64 newmsr, msr, bescr;
 int rs;

 switch (instr & 0xfc0007ff) {
 case 129:

  newmsr = vcpu->arch.shregs.srr1;

  if (!(MSR_TM_TRANSACTIONAL(newmsr) && (newmsr & MSR_TM)))
   return 0;
  newmsr = sanitize_msr(newmsr);
  vcpu->arch.shregs.msr = newmsr;
  vcpu->arch.cfar = vcpu->arch.regs.nip - 4;
  vcpu->arch.regs.nip = vcpu->arch.shregs.srr0;
  return 1;

 case 130:

  msr = vcpu->arch.shregs.msr;
  if ((msr & MSR_PR) && (vcpu->arch.vcore->pcr & PCR_ARCH_206))
   return 0;

  if (!(vcpu->arch.hfscr & HFSCR_EBB) ||
      ((msr & MSR_PR) && !(mfspr(SPRN_FSCR) & FSCR_EBB)))
   return 0;
  bescr = mfspr(SPRN_BESCR);

  if (((bescr >> 30) & 3) != 2)
   return 0;
  bescr &= ~BESCR_GE;
  if (instr & (1 << 11))
   bescr |= BESCR_GE;
  mtspr(SPRN_BESCR, bescr);
  msr = (msr & ~MSR_TS_MASK) | MSR_TS_T;
  vcpu->arch.shregs.msr = msr;
  vcpu->arch.cfar = vcpu->arch.regs.nip - 4;
  vcpu->arch.regs.nip = mfspr(SPRN_EBBRR);
  return 1;

 case 131:

  rs = (instr >> 21) & 0x1f;
  newmsr = kvmppc_get_gpr(vcpu, rs);
  msr = vcpu->arch.shregs.msr;

  if (!(MSR_TM_TRANSACTIONAL(newmsr) && (newmsr & MSR_TM)))
   return 0;

  newmsr = (newmsr & ~MSR_LE) | (msr & MSR_LE);
  newmsr = sanitize_msr(newmsr);
  vcpu->arch.shregs.msr = newmsr;
  return 1;

 case 128:

  msr = vcpu->arch.shregs.msr;

  if ((msr & MSR_PR) && (vcpu->arch.vcore->pcr & PCR_ARCH_206))
   return 0;

  if (!(vcpu->arch.hfscr & HFSCR_TM) || !(msr & MSR_TM))
   return 0;

  if (instr & (1 << 21))
   vcpu->arch.shregs.msr = (msr & ~MSR_TS_MASK) | MSR_TS_T;

  vcpu->arch.regs.ccr = (vcpu->arch.regs.ccr & 0x0fffffff) |
   0x20000000;
  return 1;
 }

 return 0;
}
