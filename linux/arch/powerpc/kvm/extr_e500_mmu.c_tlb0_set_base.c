
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gva_t ;


 int PAGE_SHIFT ;

__attribute__((used)) static int tlb0_set_base(gva_t addr, int sets, int ways)
{
 int set_base;

 set_base = (addr >> PAGE_SHIFT) & (sets - 1);
 set_base *= ways;

 return set_base;
}
