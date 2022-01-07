
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum slb_index { ____Placeholder_slb_index } slb_index ;
struct TYPE_2__ {unsigned int slb_used_bitmap; unsigned int slb_kern_bitmap; int stab_rr; } ;


 int BUG_ON (int) ;
 int SLB_NUM_BOLTED ;
 unsigned int U32_MAX ;
 int ffz (unsigned int) ;
 TYPE_1__* local_paca ;
 int mmu_slb_size ;

__attribute__((used)) static enum slb_index alloc_slb_index(bool kernel)
{
 enum slb_index index;
 if (local_paca->slb_used_bitmap != U32_MAX) {
  index = ffz(local_paca->slb_used_bitmap);
  local_paca->slb_used_bitmap |= 1U << index;
  if (kernel)
   local_paca->slb_kern_bitmap |= 1U << index;
 } else {

  index = local_paca->stab_rr;
  if (index < (mmu_slb_size - 1))
   index++;
  else
   index = SLB_NUM_BOLTED;
  local_paca->stab_rr = index;
  if (index < 32) {
   if (kernel)
    local_paca->slb_kern_bitmap |= 1U << index;
   else
    local_paca->slb_kern_bitmap &= ~(1U << index);
  }
 }
 BUG_ON(index < SLB_NUM_BOLTED);

 return index;
}
