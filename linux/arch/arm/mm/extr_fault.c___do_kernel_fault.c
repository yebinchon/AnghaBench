
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct mm_struct {int dummy; } ;


 int KERN_ALERT ;
 unsigned long PAGE_SIZE ;
 int SIGKILL ;
 int bust_spinlocks (int) ;
 int die (char*,struct pt_regs*,unsigned int) ;
 int do_exit (int ) ;
 scalar_t__ fixup_exception (struct pt_regs*) ;
 int pr_alert (char*,...) ;
 int show_pte (int ,struct mm_struct*,unsigned long) ;

__attribute__((used)) static void
__do_kernel_fault(struct mm_struct *mm, unsigned long addr, unsigned int fsr,
    struct pt_regs *regs)
{



 if (fixup_exception(regs))
  return;




 bust_spinlocks(1);
 pr_alert("8<--- cut here ---\n");
 pr_alert("Unable to handle kernel %s at virtual address %08lx\n",
   (addr < PAGE_SIZE) ? "NULL pointer dereference" :
   "paging request", addr);

 show_pte(KERN_ALERT, mm, addr);
 die("Oops", regs, fsr);
 bust_spinlocks(0);
 do_exit(SIGKILL);
}
