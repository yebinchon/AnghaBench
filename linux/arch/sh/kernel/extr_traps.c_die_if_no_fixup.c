
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;
struct exception_table_entry {int fixup; } ;


 int die (char const*,struct pt_regs*,long) ;
 struct exception_table_entry* search_exception_tables (int ) ;
 int user_mode (struct pt_regs*) ;

void die_if_no_fixup(const char *str, struct pt_regs *regs, long err)
{
 if (!user_mode(regs)) {
  const struct exception_table_entry *fixup;
  fixup = search_exception_tables(regs->pc);
  if (fixup) {
   regs->pc = fixup->fixup;
   return;
  }

  die(str, regs, err);
 }
}
