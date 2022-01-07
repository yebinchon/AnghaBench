
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef unsigned int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int L1_PPTB_mskBASE ;
 int NDS32_SR_L1_PPTB ;
 unsigned int TLB_DATA_mskPPN ;
 int __nds32__mfsr (int ) ;
 scalar_t__ __va (int) ;
 scalar_t__ cpu_resume ;
 int pgd_index (unsigned int) ;
 int * pmd_offset (int *,unsigned int) ;
 unsigned int* pte_offset_map (int *,unsigned int) ;
 int * pud_offset (int *,unsigned int) ;
 unsigned int resume_addr ;
 int suspend2ram () ;

__attribute__((used)) static void nds32_suspend2ram(void)
{
 pgd_t *pgdv;
 pud_t *pudv;
 pmd_t *pmdv;
 pte_t *ptev;

 pgdv = (pgd_t *)__va((__nds32__mfsr(NDS32_SR_L1_PPTB) &
  L1_PPTB_mskBASE)) + pgd_index((unsigned int)cpu_resume);

 pudv = pud_offset(pgdv, (unsigned int)cpu_resume);
 pmdv = pmd_offset(pudv, (unsigned int)cpu_resume);
 ptev = pte_offset_map(pmdv, (unsigned int)cpu_resume);

 resume_addr = ((*ptev) & TLB_DATA_mskPPN)
   | ((unsigned int)cpu_resume & 0x00000fff);

 suspend2ram();
}
