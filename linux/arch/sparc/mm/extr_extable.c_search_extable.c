
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int fixup; unsigned long insn; } ;



const struct exception_table_entry *
search_extable(const struct exception_table_entry *base,
        const size_t num,
        unsigned long value)
{
 int i;
 for (i = 0; i < num; i++) {
  if (base[i].fixup == 0) {

   i++;
   continue;
  }


  if (base[i].fixup == -1)
   continue;

  if (base[i].insn == value)
   return &base[i];
 }


 for (i = 0; i < (num - 1); i++) {
  if (base[i].fixup)
   continue;

  if (base[i].insn <= value && base[i + 1].insn > value)
   return &base[i];

  i++;
 }

        return ((void*)0);
}
