
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int PGDIR_SHIFT ;
 int PGD_ORDER ;
 int PMD_SHIFT ;
 int _PAGE_GLOBAL ;
 int _PAGE_HUGE ;
 unsigned long ilog2 (int ) ;
 int kscratch_used_mask ;
 scalar_t__ swapper_pg_dir ;
 int write_c0_kpgd (long) ;
 int write_c0_pwctl (int) ;
 int write_c0_pwfield (unsigned long) ;
 int write_c0_pwsize (int) ;

__attribute__((used)) static void setup_pw(void)
{
 unsigned long pgd_i, pgd_w;

 unsigned long pmd_i, pmd_w;

 unsigned long pt_i, pt_w;
 unsigned long pte_i, pte_w;





 pgd_i = PGDIR_SHIFT;

 pgd_w = PGDIR_SHIFT - PMD_SHIFT + PGD_ORDER;

 pmd_i = PMD_SHIFT;
 pmd_w = PMD_SHIFT - PAGE_SHIFT;




 pt_i = PAGE_SHIFT;
 pt_w = PAGE_SHIFT - 3;

 pte_i = ilog2(_PAGE_GLOBAL);
 pte_w = 0;


 write_c0_pwfield(pgd_i << 24 | pmd_i << 12 | pt_i << 6 | pte_i);
 write_c0_pwsize(1 << 30 | pgd_w << 24 | pmd_w << 12 | pt_w << 6 | pte_w);
 write_c0_kpgd((long)swapper_pg_dir);
 kscratch_used_mask |= (1 << 7);
}
