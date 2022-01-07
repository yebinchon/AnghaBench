
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;
struct exception_table_entry {int fixup; } ;


 int die (char*,struct pt_regs*,int) ;
 struct exception_table_entry* search_exception_tables (int ) ;

void bad_page_fault(struct pt_regs *regs, unsigned long address, int sig)
{
 const struct exception_table_entry *fixup;


 fixup = search_exception_tables(regs->pc);
 if (fixup) {
  regs->pc = fixup->fixup;
  return;
 }


 die("kernel access of bad area", regs, sig);
}
