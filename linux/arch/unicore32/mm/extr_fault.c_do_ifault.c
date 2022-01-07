
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {int * pgd; } ;


 unsigned long TASK_SIZE ;
 int * cpu_get_pgd () ;
 int do_bad_area (unsigned long,unsigned int,struct pt_regs*) ;
 int do_pf (unsigned long,unsigned int,struct pt_regs*) ;
 int flush_pmd_entry (int *) ;
 TYPE_1__ init_mm ;
 unsigned int pgd_index (unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int set_pmd (int *,int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int do_ifault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 unsigned int index;
 pgd_t *pgd, *pgd_k;
 pmd_t *pmd, *pmd_k;

 if (addr < TASK_SIZE)
  return do_pf(addr, fsr, regs);

 if (user_mode(regs))
  goto bad_area;

 index = pgd_index(addr);

 pgd = cpu_get_pgd() + index;
 pgd_k = init_mm.pgd + index;

 if (pgd_none(*pgd_k))
  goto bad_area;

 pmd_k = pmd_offset((pud_t *) pgd_k, addr);
 pmd = pmd_offset((pud_t *) pgd, addr);

 if (pmd_none(*pmd_k))
  goto bad_area;

 set_pmd(pmd, *pmd_k);
 flush_pmd_entry(pmd);
 return 0;

bad_area:
 do_bad_area(addr, fsr, regs);
 return 0;
}
