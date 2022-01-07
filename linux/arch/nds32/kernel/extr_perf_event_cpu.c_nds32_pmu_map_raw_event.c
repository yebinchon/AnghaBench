
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int ENOENT ;
 int PFM_OFFSET_MAGIC_0 ;
 int PFM_OFFSET_MAGIC_1 ;
 int PFM_OFFSET_MAGIC_2 ;
 int SPAV3_0_SEL_BASE ;
 int SPAV3_0_SEL_LAST ;
 int SPAV3_1_SEL_BASE ;
 int SPAV3_1_SEL_LAST ;
 int SPAV3_2_SEL_BASE ;
 int SPAV3_2_SEL_LAST ;

__attribute__((used)) static int nds32_pmu_map_raw_event(u32 raw_event_mask, u64 config)
{
 int ev_type = (int)(config & raw_event_mask);
 int idx = config >> 8;

 switch (idx) {
 case 0:
  ev_type = PFM_OFFSET_MAGIC_0 + ev_type;
  if (ev_type >= SPAV3_0_SEL_LAST || ev_type <= SPAV3_0_SEL_BASE)
   return -ENOENT;
  break;
 case 1:
  ev_type = PFM_OFFSET_MAGIC_1 + ev_type;
  if (ev_type >= SPAV3_1_SEL_LAST || ev_type <= SPAV3_1_SEL_BASE)
   return -ENOENT;
  break;
 case 2:
  ev_type = PFM_OFFSET_MAGIC_2 + ev_type;
  if (ev_type >= SPAV3_2_SEL_LAST || ev_type <= SPAV3_2_SEL_BASE)
   return -ENOENT;
  break;
 default:
  return -ENOENT;
 }

 return ev_type;
}
