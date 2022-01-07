
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char const descriptor; int tlb_type; int entries; } ;


 size_t ENTRIES ;
 TYPE_1__* intel_tlb_table ;
 int * tlb_lld_1g ;
 int * tlb_lld_2m ;
 int * tlb_lld_4k ;
 int * tlb_lld_4m ;
 int * tlb_lli_2m ;
 int * tlb_lli_4k ;
 int * tlb_lli_4m ;

__attribute__((used)) static void intel_tlb_lookup(const unsigned char desc)
{
 unsigned char k;
 if (desc == 0)
  return;


 for (k = 0; intel_tlb_table[k].descriptor != desc && intel_tlb_table[k].descriptor != 0; k++)

  ;

 if (intel_tlb_table[k].tlb_type == 0)
  return;

 switch (intel_tlb_table[k].tlb_type) {
 case 141:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 140:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 128:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 130:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 129:
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 131:
  if (tlb_lli_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 134:
 case 138:
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 132:
 case 137:
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 135:
 case 139:
  if (tlb_lld_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 133:
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 136:
  if (tlb_lld_1g[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_1g[ENTRIES] = intel_tlb_table[k].entries;
  break;
 }
}
