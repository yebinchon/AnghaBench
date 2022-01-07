
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ pc; } ;
struct exception_table_entry {scalar_t__ fixup; } ;


 int instruction_pointer (struct pt_regs*) ;
 struct exception_table_entry* search_exception_tables (int ) ;

int fixup_exception(struct pt_regs *regs)
{
 const struct exception_table_entry *fixup;

 fixup = search_exception_tables(instruction_pointer(regs));
 if (fixup)
  regs->pc = (unsigned long)&fixup->fixup + fixup->fixup;

 return fixup != ((void*)0);
}
