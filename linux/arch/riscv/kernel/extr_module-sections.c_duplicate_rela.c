
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Rela ;


 scalar_t__ is_rela_equal (int const*,int const*) ;

__attribute__((used)) static bool duplicate_rela(const Elf_Rela *rela, int idx)
{
 int i;
 for (i = 0; i < idx; i++) {
  if (is_rela_equal(&rela[i], &rela[idx]))
   return 1;
 }
 return 0;
}
