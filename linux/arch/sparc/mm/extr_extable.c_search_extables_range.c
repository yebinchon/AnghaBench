
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {unsigned long fixup; unsigned long insn; } ;


 struct exception_table_entry* search_exception_tables (unsigned long) ;

unsigned long search_extables_range(unsigned long addr, unsigned long *g2)
{
 const struct exception_table_entry *entry;

 entry = search_exception_tables(addr);
 if (!entry)
  return 0;


 if (!entry->fixup) {
  *g2 = (addr - entry->insn) / 4;
  return (entry + 1)->fixup;
 }

 return entry->fixup;
}
