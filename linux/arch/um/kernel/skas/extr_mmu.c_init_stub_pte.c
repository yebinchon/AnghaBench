
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int _PAGE_PRESENT ;
 int __pgprot (int ) ;
 int mk_pte (int ,int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pmd_free (struct mm_struct*,int *) ;
 int * pte_alloc_map (struct mm_struct*,int *,unsigned long) ;
 int pte_mkread (int ) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 int pud_free (struct mm_struct*,int *) ;
 int virt_to_page (unsigned long) ;

__attribute__((used)) static int init_stub_pte(struct mm_struct *mm, unsigned long proc,
    unsigned long kernel)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 pgd = pgd_offset(mm, proc);
 pud = pud_alloc(mm, pgd, proc);
 if (!pud)
  goto out;

 pmd = pmd_alloc(mm, pud, proc);
 if (!pmd)
  goto out_pmd;

 pte = pte_alloc_map(mm, pmd, proc);
 if (!pte)
  goto out_pte;

 *pte = mk_pte(virt_to_page(kernel), __pgprot(_PAGE_PRESENT));
 *pte = pte_mkread(*pte);
 return 0;

 out_pte:
 pmd_free(mm, pmd);
 out_pmd:
 pud_free(mm, pud);
 out:
 return -ENOMEM;
}
