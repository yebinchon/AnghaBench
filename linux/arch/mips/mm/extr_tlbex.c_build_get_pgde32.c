
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C0_BADVADDR ;
 int PGDIR_SHIFT ;
 int PGD_T_LOG2 ;
 int SMP_CPUID_PTRSHIFT ;
 int SMP_CPUID_REG ;
 int UASM_i_LA_mostly (int **,unsigned int,long) ;
 int c0_kscratch () ;
 scalar_t__ pgd_current ;
 int pgd_reg ;
 int uasm_i_addu (int **,unsigned int,unsigned int,unsigned int) ;
 int uasm_i_lw (int **,unsigned int,int ,unsigned int) ;
 int uasm_i_mfc0 (int **,unsigned int,int ,...) ;
 int uasm_i_sll (int **,unsigned int,unsigned int,int ) ;
 int uasm_i_srl (int **,unsigned int,unsigned int,int ) ;
 int uasm_rel_lo (long) ;

void build_get_pgde32(u32 **p, unsigned int tmp, unsigned int ptr)
{
 if (pgd_reg != -1) {

  uasm_i_mfc0(p, ptr, c0_kscratch(), pgd_reg);
  uasm_i_mfc0(p, tmp, C0_BADVADDR);
 } else {
  long pgdc = (long)pgd_current;
  UASM_i_LA_mostly(p, ptr, pgdc);

  uasm_i_mfc0(p, tmp, C0_BADVADDR);
  uasm_i_lw(p, ptr, uasm_rel_lo(pgdc), ptr);
 }
 uasm_i_srl(p, tmp, tmp, PGDIR_SHIFT);
 uasm_i_sll(p, tmp, tmp, PGD_T_LOG2);
 uasm_i_addu(p, ptr, ptr, tmp);
}
