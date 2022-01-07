
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long CNST_CACHE_GROUP_MASK ;
 unsigned long CNST_CACHE_GROUP_VAL (int) ;
 unsigned long CNST_CACHE_PMC4_MASK ;
 unsigned long CNST_CACHE_PMC4_VAL ;
 unsigned long CNST_EBB_MASK ;
 unsigned long CNST_EBB_VAL (unsigned int) ;
 unsigned long CNST_FAB_MATCH_MASK ;
 unsigned long CNST_FAB_MATCH_VAL (int) ;
 unsigned long CNST_IFM_MASK ;
 unsigned long CNST_IFM_VAL (int) ;
 unsigned long CNST_L1_QUAL_MASK ;
 unsigned long CNST_L1_QUAL_VAL (unsigned int) ;
 unsigned long CNST_NC_MASK ;
 unsigned long CNST_NC_VAL ;
 unsigned long CNST_PMC_MASK (unsigned int) ;
 unsigned long CNST_PMC_VAL (unsigned int) ;
 unsigned long CNST_SAMPLE_MASK ;
 unsigned long CNST_SAMPLE_VAL (int) ;
 unsigned long CNST_THRESH_MASK ;
 unsigned long CNST_THRESH_VAL (int) ;
 int CPU_FTR_ARCH_300 ;
 int EVENT_CACHE_SEL_MASK ;
 int EVENT_CACHE_SEL_SHIFT ;
 int EVENT_EBB_MASK ;
 int EVENT_EBB_SHIFT ;
 int EVENT_IFM_SHIFT ;
 int EVENT_IS_L1 ;
 int EVENT_LINUX_MASK ;
 int EVENT_PMC_MASK ;
 int EVENT_PMC_SHIFT ;
 int EVENT_SAMPLE_SHIFT ;
 int EVENT_THRESH_SHIFT ;
 int EVENT_THR_CTL_SHIFT ;
 int EVENT_UNIT_MASK ;
 int EVENT_UNIT_SHIFT ;
 int EVENT_WANTS_BHRB ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ event_is_fab_match (int) ;
 scalar_t__ event_is_threshold (int) ;
 scalar_t__ is_event_marked (int) ;
 int is_event_valid (int) ;
 scalar_t__ is_thresh_cmp_valid (int) ;

int isa207_get_constraint(u64 event, unsigned long *maskp, unsigned long *valp)
{
 unsigned int unit, pmc, cache, ebb;
 unsigned long mask, value;

 mask = value = 0;

 if (!is_event_valid(event))
  return -1;

 pmc = (event >> EVENT_PMC_SHIFT) & EVENT_PMC_MASK;
 unit = (event >> EVENT_UNIT_SHIFT) & EVENT_UNIT_MASK;
 cache = (event >> EVENT_CACHE_SEL_SHIFT) & EVENT_CACHE_SEL_MASK;
 ebb = (event >> EVENT_EBB_SHIFT) & EVENT_EBB_MASK;

 if (pmc) {
  u64 base_event;

  if (pmc > 6)
   return -1;


  base_event = event & ~EVENT_LINUX_MASK;

  if (pmc >= 5 && base_event != 0x500fa &&
    base_event != 0x600f4)
   return -1;

  mask |= CNST_PMC_MASK(pmc);
  value |= CNST_PMC_VAL(pmc);
 }

 if (pmc <= 4) {






  mask |= CNST_NC_MASK;
  value |= CNST_NC_VAL;
 }

 if (unit >= 6 && unit <= 9) {
  if (cpu_has_feature(CPU_FTR_ARCH_300)) {
   mask |= CNST_CACHE_GROUP_MASK;
   value |= CNST_CACHE_GROUP_VAL(event & 0xff);

   mask |= CNST_CACHE_PMC4_MASK;
   if (pmc == 4)
    value |= CNST_CACHE_PMC4_VAL;
  } else if (cache & 0x7) {
   return -1;
  }

 } else if (cpu_has_feature(CPU_FTR_ARCH_300) || (event & EVENT_IS_L1)) {
  mask |= CNST_L1_QUAL_MASK;
  value |= CNST_L1_QUAL_VAL(cache);
 }

 if (is_event_marked(event)) {
  mask |= CNST_SAMPLE_MASK;
  value |= CNST_SAMPLE_VAL(event >> EVENT_SAMPLE_SHIFT);
 }

 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  if (event_is_threshold(event) && is_thresh_cmp_valid(event)) {
   mask |= CNST_THRESH_MASK;
   value |= CNST_THRESH_VAL(event >> EVENT_THRESH_SHIFT);
  }
 } else {




  if (event_is_fab_match(event)) {
   mask |= CNST_FAB_MATCH_MASK;
   value |= CNST_FAB_MATCH_VAL(event >> EVENT_THR_CTL_SHIFT);
  } else {
   if (!is_thresh_cmp_valid(event))
    return -1;

   mask |= CNST_THRESH_MASK;
   value |= CNST_THRESH_VAL(event >> EVENT_THRESH_SHIFT);
  }
 }

 if (!pmc && ebb)

  return -1;

 if (event & EVENT_WANTS_BHRB) {
  if (!ebb)

   return -1;

  mask |= CNST_IFM_MASK;
  value |= CNST_IFM_VAL(event >> EVENT_IFM_SHIFT);
 }






 mask |= CNST_EBB_VAL(ebb);
 value |= CNST_EBB_MASK;

 *maskp = mask;
 *valp = value;

 return 0;
}
