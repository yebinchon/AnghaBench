
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int PAGE_SIZE ;
 int READ_ONCE (int ) ;
 int SZ_1K ;
 TYPE_1__* current ;
 struct mm_struct init_mm ;
 scalar_t__ is_ttbr0_addr (unsigned long) ;
 scalar_t__ is_ttbr1_addr (unsigned long) ;
 int mm_to_pgd_phys (struct mm_struct*) ;
 scalar_t__ pgd_bad (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_val (int ) ;
 scalar_t__ pmd_bad (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_val (int ) ;
 int pr_alert (char*,...) ;
 int pr_cont (char*,...) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int pte_val (int ) ;
 scalar_t__ pud_bad (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_val (int ) ;
 int vabits_actual ;

__attribute__((used)) static void show_pte(unsigned long addr)
{
 struct mm_struct *mm;
 pgd_t *pgdp;
 pgd_t pgd;

 if (is_ttbr0_addr(addr)) {

  mm = current->active_mm;
  if (mm == &init_mm) {
   pr_alert("[%016lx] user address but active_mm is swapper\n",
     addr);
   return;
  }
 } else if (is_ttbr1_addr(addr)) {

  mm = &init_mm;
 } else {
  pr_alert("[%016lx] address between user and kernel address ranges\n",
    addr);
  return;
 }

 pr_alert("%s pgtable: %luk pages, %llu-bit VAs, pgdp=%016lx\n",
   mm == &init_mm ? "swapper" : "user", PAGE_SIZE / SZ_1K,
   vabits_actual, mm_to_pgd_phys(mm));
 pgdp = pgd_offset(mm, addr);
 pgd = READ_ONCE(*pgdp);
 pr_alert("[%016lx] pgd=%016llx", addr, pgd_val(pgd));

 do {
  pud_t *pudp, pud;
  pmd_t *pmdp, pmd;
  pte_t *ptep, pte;

  if (pgd_none(pgd) || pgd_bad(pgd))
   break;

  pudp = pud_offset(pgdp, addr);
  pud = READ_ONCE(*pudp);
  pr_cont(", pud=%016llx", pud_val(pud));
  if (pud_none(pud) || pud_bad(pud))
   break;

  pmdp = pmd_offset(pudp, addr);
  pmd = READ_ONCE(*pmdp);
  pr_cont(", pmd=%016llx", pmd_val(pmd));
  if (pmd_none(pmd) || pmd_bad(pmd))
   break;

  ptep = pte_offset_map(pmdp, addr);
  pte = READ_ONCE(*ptep);
  pr_cont(", pte=%016llx", pte_val(pte));
  pte_unmap(ptep);
 } while(0);

 pr_cont("\n");
}
