
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int * areg; int pc; } ;
struct exception_table_entry {int fixup; } ;
struct TYPE_3__ {unsigned long bad_uaddr; } ;
struct TYPE_4__ {TYPE_1__ thread; int comm; } ;


 TYPE_2__* current ;
 int do_exit (int) ;
 int pr_alert (char*,unsigned long,int ,int ) ;
 int pr_debug (char*,int ,int ,int ) ;
 struct exception_table_entry* search_exception_tables (int ) ;

void
bad_page_fault(struct pt_regs *regs, unsigned long address, int sig)
{
 extern void die(const char*, struct pt_regs*, long);
 const struct exception_table_entry *entry;


 if ((entry = search_exception_tables(regs->pc)) != ((void*)0)) {
  pr_debug("%s: Exception at pc=%#010lx (%lx)\n",
    current->comm, regs->pc, entry->fixup);
  current->thread.bad_uaddr = address;
  regs->pc = entry->fixup;
  return;
 }




 pr_alert("Unable to handle kernel paging request at virtual "
   "address %08lx\n pc = %08lx, ra = %08lx\n",
   address, regs->pc, regs->areg[0]);
 die("Oops", regs, sig);
 do_exit(sig);
}
