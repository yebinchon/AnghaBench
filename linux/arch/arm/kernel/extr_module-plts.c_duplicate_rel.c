
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Rel ;
typedef int Elf32_Addr ;


 scalar_t__ cmp_rel (int const*,int const*) ;
 scalar_t__ is_zero_addend_relocation (int ,int const*) ;

__attribute__((used)) static bool duplicate_rel(Elf32_Addr base, const Elf32_Rel *rel, int num)
{
 const Elf32_Rel *prev;






 if (!num)
  return 0;

 prev = rel + num - 1;
 return cmp_rel(rel + num, prev) == 0 &&
        is_zero_addend_relocation(base, prev);
}
