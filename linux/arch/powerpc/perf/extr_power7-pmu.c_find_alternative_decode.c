
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int PM_PMCSEL_MSK ;
 int PM_PMC_MSK ;
 int PM_PMC_SH ;

__attribute__((used)) static s64 find_alternative_decode(u64 event)
{
 int pmc, psel;


 pmc = (event >> PM_PMC_SH) & PM_PMC_MSK;
 psel = event & PM_PMCSEL_MSK;
 if ((pmc == 2 || pmc == 4) && (psel & ~7) == 0x40)
  return event - (1 << PM_PMC_SH) + 8;
 if ((pmc == 1 || pmc == 3) && (psel & ~7) == 0x48)
  return event + (1 << PM_PMC_SH) - 8;
 return -1;
}
