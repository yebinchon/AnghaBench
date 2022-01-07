
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PM_BYTE_MSK ;
 int PM_BYTE_SH ;


 int PM_PMCSEL_MSK ;
 int PM_PMC_MSK ;
 int PM_PMC_SH ;
 int PM_UNIT_MSK ;
 int PM_UNIT_SH ;

 int* direct_marked_event ;

__attribute__((used)) static int p970_marked_instr_event(u64 event)
{
 int pmc, psel, unit, byte, bit;
 unsigned int mask;

 pmc = (event >> PM_PMC_SH) & PM_PMC_MSK;
 psel = event & PM_PMCSEL_MSK;
 if (pmc) {
  if (direct_marked_event[pmc - 1] & (1 << psel))
   return 1;
  if (psel == 0)
   bit = (pmc <= 4)? pmc - 1: 8 - pmc;
  else if (psel == 7 || psel == 13)
   bit = 4;
  else
   return 0;
 } else
  bit = psel;

 byte = (event >> PM_BYTE_SH) & PM_BYTE_MSK;
 unit = (event >> PM_UNIT_SH) & PM_UNIT_MSK;
 mask = 0;
 switch (unit) {
 case 128:
  mask = 0x4c;
  break;
 case 130:

  mask = 0x085dff00;
  break;
 case 129:
  mask = 0x50 << 24;
  break;
 }
 return (mask >> (byte * 8 + bit)) & 1;
}
