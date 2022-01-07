
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int PAGE_KERNEL_EXEC ;
 int PAGE_KERNEL_LARGE_EXEC ;
 int PAGE_MASK ;
 int PMD_MASK ;
 int X86_FEATURE_PSE ;
 int __pmd (int) ;
 int __pte (int) ;
 scalar_t__ boot_cpu_has (int ) ;
 int jump_address_phys ;
 int pgd_index (int ) ;
 int pgprot_val (int ) ;
 int pmd_index (int ) ;
 int pte_index (int ) ;
 int restore_jump_address ;
 int * resume_one_md_table_init (int *) ;
 int * resume_one_page_table_init (int *) ;
 int set_pmd (int *,int ) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static int set_up_temporary_text_mapping(pgd_t *pgd_base)
{
 pgd_t *pgd;
 pmd_t *pmd;
 pte_t *pte;

 pgd = pgd_base + pgd_index(restore_jump_address);

 pmd = resume_one_md_table_init(pgd);
 if (!pmd)
  return -ENOMEM;

 if (boot_cpu_has(X86_FEATURE_PSE)) {
  set_pmd(pmd + pmd_index(restore_jump_address),
  __pmd((jump_address_phys & PMD_MASK) | pgprot_val(PAGE_KERNEL_LARGE_EXEC)));
 } else {
  pte = resume_one_page_table_init(pmd);
  if (!pte)
   return -ENOMEM;
  set_pte(pte + pte_index(restore_jump_address),
  __pte((jump_address_phys & PAGE_MASK) | pgprot_val(PAGE_KERNEL_EXEC)));
 }

 return 0;
}
