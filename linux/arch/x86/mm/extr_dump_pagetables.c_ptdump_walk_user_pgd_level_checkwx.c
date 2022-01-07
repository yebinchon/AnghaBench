
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int * INIT_PGD ;
 int X86_FEATURE_PTI ;
 int _PAGE_NX ;
 int __supported_pte_mask ;
 int boot_cpu_has (int ) ;
 int * kernel_to_user_pgdp (int *) ;
 int pr_info (char*) ;
 int ptdump_walk_pgd_level_core (int *,int *,int,int) ;

void ptdump_walk_user_pgd_level_checkwx(void)
{
}
