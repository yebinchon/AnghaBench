
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtrr_iter {scalar_t__ index; scalar_t__ end; int fixed; int seg; TYPE_1__* mtrr_state; int * range; } ;
struct TYPE_2__ {int fixed_ranges; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 scalar_t__ fixed_mtrr_range_end_addr (int ,scalar_t__) ;
 scalar_t__ fixed_mtrr_seg_end_range_index (int ) ;
 void mtrr_lookup_var_start (struct mtrr_iter*) ;

__attribute__((used)) static void mtrr_lookup_fixed_next(struct mtrr_iter *iter)
{

 if (fixed_mtrr_range_end_addr(iter->seg, iter->index) >= iter->end) {
  iter->fixed = 0;
  iter->range = ((void*)0);
  return;
 }

 iter->index++;


 if (iter->index >= ARRAY_SIZE(iter->mtrr_state->fixed_ranges))
  return mtrr_lookup_var_start(iter);


 if (iter->index > fixed_mtrr_seg_end_range_index(iter->seg))
  iter->seg++;
}
