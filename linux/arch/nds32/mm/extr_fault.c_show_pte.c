
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int CONFIG_HIGHMEM ;
 scalar_t__ IS_ENABLED (int ) ;
 struct mm_struct init_mm ;
 scalar_t__ pgd_bad (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_val (int ) ;
 scalar_t__ pmd_bad (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_val (int ) ;
 int pr_alert (char*,...) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int pte_val (int ) ;

void show_pte(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pgd;
 if (!mm)
  mm = &init_mm;

 pr_alert("pgd = %p\n", mm->pgd);
 pgd = pgd_offset(mm, addr);
 pr_alert("[%08lx] *pgd=%08lx", addr, pgd_val(*pgd));

 do {
  pmd_t *pmd;

  if (pgd_none(*pgd))
   break;

  if (pgd_bad(*pgd)) {
   pr_alert("(bad)");
   break;
  }

  pmd = pmd_offset(pgd, addr);

  pr_alert(", *pmd=%08lx", pmd_val(*pmd));


  if (pmd_none(*pmd))
   break;

  if (pmd_bad(*pmd)) {
   pr_alert("(bad)");
   break;
  }

  if (IS_ENABLED(CONFIG_HIGHMEM))
  {
   pte_t *pte;

   pte = pte_offset_map(pmd, addr);
   pr_alert(", *pte=%08lx", pte_val(*pte));
   pte_unmap(pte);
  }
 } while (0);

 pr_alert("\n");
}
