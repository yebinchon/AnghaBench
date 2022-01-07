
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;
struct exception_table_entry {int nextinsn; } ;


 int instruction_pointer (struct pt_regs*) ;
 struct exception_table_entry* search_exception_tables (int ) ;

int fixup_exception(struct pt_regs *regs)
{
 const struct exception_table_entry *fixup;

 fixup = search_exception_tables(instruction_pointer(regs));
 if (fixup) {
  regs->pc = fixup->nextinsn;

  return 1;
 }

 return 0;
}
