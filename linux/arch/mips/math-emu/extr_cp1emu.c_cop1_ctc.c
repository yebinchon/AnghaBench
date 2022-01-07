
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pt_regs {int* regs; scalar_t__ cp0_epc; } ;
struct mips_fpu_struct {int fcr31; } ;
typedef int mips_instruction ;
struct TYPE_2__ {int fpu_msk31; } ;






 int FPU_CSR_ALL_E ;
 int FPU_CSR_ALL_S ;
 int FPU_CSR_ALL_X ;
 int FPU_CSR_COND ;
 int FPU_CSR_COND1_S ;
 int FPU_CSR_CONDX ;
 int FPU_CSR_COND_S ;
 int FPU_CSR_FS ;
 int FPU_CSR_FS_S ;
 int FPU_CSR_RM ;
 int MIPSInst_RD (int ) ;
 size_t MIPSInst_RT (int ) ;
 int MIPS_FCCR_COND0_S ;
 int MIPS_FCCR_COND1_S ;
 int MIPS_FENR_FS_S ;
 TYPE_1__ boot_cpu_data ;
 int cpu_has_mips_r ;
 int pr_debug (char*,void*,size_t,int) ;

__attribute__((used)) static inline void cop1_ctc(struct pt_regs *xcp, struct mips_fpu_struct *ctx,
       mips_instruction ir)
{
 u32 fcr31 = ctx->fcr31;
 u32 value;
 u32 mask;

 if (MIPSInst_RT(ir) == 0)
  value = 0;
 else
  value = xcp->regs[MIPSInst_RT(ir)];

 switch (MIPSInst_RD(ir)) {
 case 131:
  pr_debug("%p gpr[%d]->csr=%08x\n",
    (void *)xcp->cp0_epc, MIPSInst_RT(ir), value);


  mask = boot_cpu_data.fpu_msk31;
  fcr31 = (value & ~mask) | (fcr31 & mask);
  break;

 case 129:
  if (!cpu_has_mips_r)
   break;
  pr_debug("%p gpr[%d]->enr=%08x\n",
    (void *)xcp->cp0_epc, MIPSInst_RT(ir), value);
  fcr31 &= ~(FPU_CSR_FS | FPU_CSR_ALL_E | FPU_CSR_RM);
  fcr31 |= (value << (FPU_CSR_FS_S - MIPS_FENR_FS_S)) &
    FPU_CSR_FS;
  fcr31 |= value & (FPU_CSR_ALL_E | FPU_CSR_RM);
  break;

 case 128:
  if (!cpu_has_mips_r)
   break;
  pr_debug("%p gpr[%d]->exr=%08x\n",
    (void *)xcp->cp0_epc, MIPSInst_RT(ir), value);
  fcr31 &= ~(FPU_CSR_ALL_X | FPU_CSR_ALL_S);
  fcr31 |= value & (FPU_CSR_ALL_X | FPU_CSR_ALL_S);
  break;

 case 130:
  if (!cpu_has_mips_r)
   break;
  pr_debug("%p gpr[%d]->ccr=%08x\n",
    (void *)xcp->cp0_epc, MIPSInst_RT(ir), value);
  fcr31 &= ~(FPU_CSR_CONDX | FPU_CSR_COND);
  fcr31 |= (value << (FPU_CSR_COND_S - MIPS_FCCR_COND0_S)) &
    FPU_CSR_COND;
  fcr31 |= (value << (FPU_CSR_COND1_S - MIPS_FCCR_COND1_S)) &
    FPU_CSR_CONDX;
  break;

 default:
  break;
 }

 ctx->fcr31 = fcr31;
}
