
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf64_Rela ;


 scalar_t__ cmp_rela (int const*,int const*) ;

__attribute__((used)) static bool duplicate_rel(const Elf64_Rela *rela, int num)
{





 return num > 0 && cmp_rela(rela + num, rela + num - 1) == 0;
}
