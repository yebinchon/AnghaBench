
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min; } ;


 TYPE_1__ powernv_pstate_info ;
 scalar_t__ ramp_down_percent (unsigned int) ;

__attribute__((used)) static inline int calc_global_pstate(unsigned int elapsed_time,
         int highest_lpstate_idx,
         int local_pstate_idx)
{
 int index_diff;
 index_diff = ((int)ramp_down_percent(elapsed_time) *
   (powernv_pstate_info.min - highest_lpstate_idx)) / 100;


 if (highest_lpstate_idx + index_diff >= local_pstate_idx)
  return local_pstate_idx;
 else
  return highest_lpstate_idx + index_diff;
}
