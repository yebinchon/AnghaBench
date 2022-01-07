
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slb_cache_ptr; unsigned long* slb_cache; } ;


 int CPU_FTR_ARCH_300 ;
 int SLB_CACHE_ENTRIES ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_1__* local_paca ;

__attribute__((used)) static void slb_cache_update(unsigned long esid_data)
{
 int slb_cache_index;

 if (cpu_has_feature(CPU_FTR_ARCH_300))
  return;




 slb_cache_index = local_paca->slb_cache_ptr;
 if (slb_cache_index < SLB_CACHE_ENTRIES) {




  local_paca->slb_cache[slb_cache_index++] = esid_data >> 28;
  local_paca->slb_cache_ptr++;
 } else {





  local_paca->slb_cache_ptr = SLB_CACHE_ENTRIES + 1;
 }
}
