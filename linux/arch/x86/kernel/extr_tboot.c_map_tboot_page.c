
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;
struct TYPE_4__ {int pgd; } ;
typedef TYPE_1__ pgd_t ;
typedef int p4d_t ;


 int _PAGE_NX ;
 int * p4d_alloc (int *,TYPE_1__*,unsigned long) ;
 int pfn_pte (unsigned long,int ) ;
 TYPE_1__* pgd_offset (int *,unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;
 int * pte_alloc_map (int *,int *,unsigned long) ;
 int pte_unmap (int *) ;
 int * pud_alloc (int *,int *,unsigned long) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;
 int tboot_mm ;

__attribute__((used)) static int map_tboot_page(unsigned long vaddr, unsigned long pfn,
     pgprot_t prot)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 pgd = pgd_offset(&tboot_mm, vaddr);
 p4d = p4d_alloc(&tboot_mm, pgd, vaddr);
 if (!p4d)
  return -1;
 pud = pud_alloc(&tboot_mm, p4d, vaddr);
 if (!pud)
  return -1;
 pmd = pmd_alloc(&tboot_mm, pud, vaddr);
 if (!pmd)
  return -1;
 pte = pte_alloc_map(&tboot_mm, pmd, vaddr);
 if (!pte)
  return -1;
 set_pte_at(&tboot_mm, vaddr, pte, pfn_pte(pfn, prot));
 pte_unmap(pte);
 pgd->pgd &= ~_PAGE_NX;

 return 0;
}
