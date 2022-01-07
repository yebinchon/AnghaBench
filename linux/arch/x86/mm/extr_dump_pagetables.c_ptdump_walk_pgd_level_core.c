
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {int to_dmesg; int check_wx; scalar_t__ wx_pages; void* current_address; } ;
typedef int pgprotval_t ;
typedef int pgd_t ;


 int * INIT_PGD ;
 int PGD_LEVEL_MULT ;
 int PTRS_PER_PGD ;
 int _PAGE_RW ;
 int _PAGE_USER ;
 int __pgprot (int) ;
 int cond_resched () ;
 int is_hypervisor_range (int) ;
 void* normalize_addr (int) ;
 int note_page (struct seq_file*,struct pg_state*,int ,int,int) ;
 int pgd_flags (int ) ;
 scalar_t__ pgd_large (int ) ;
 int pgd_none (int ) ;
 int pgd_present (int ) ;
 int pr_info (char*,...) ;
 int walk_p4d_level (struct seq_file*,struct pg_state*,int ,int,int) ;

__attribute__((used)) static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
           bool checkwx, bool dmesg)
{
 pgd_t *start = INIT_PGD;
 pgprotval_t prot, eff;
 int i;
 struct pg_state st = {};

 if (pgd) {
  start = pgd;
  st.to_dmesg = dmesg;
 }

 st.check_wx = checkwx;
 if (checkwx)
  st.wx_pages = 0;

 for (i = 0; i < PTRS_PER_PGD; i++) {
  st.current_address = normalize_addr(i * PGD_LEVEL_MULT);
  if (!pgd_none(*start) && !is_hypervisor_range(i)) {
   prot = pgd_flags(*start);



   eff = prot;

   if (pgd_large(*start) || !pgd_present(*start)) {
    note_page(m, &st, __pgprot(prot), eff, 1);
   } else {
    walk_p4d_level(m, &st, *start, eff,
            i * PGD_LEVEL_MULT);
   }
  } else
   note_page(m, &st, __pgprot(0), 0, 1);

  cond_resched();
  start++;
 }


 st.current_address = normalize_addr(PTRS_PER_PGD*PGD_LEVEL_MULT);
 note_page(m, &st, __pgprot(0), 0, 0);
 if (!checkwx)
  return;
 if (st.wx_pages)
  pr_info("x86/mm: Checked W+X mappings: FAILED, %lu W+X pages found.\n",
   st.wx_pages);
 else
  pr_info("x86/mm: Checked W+X mappings: passed, no W+X pages found.\n");
}
