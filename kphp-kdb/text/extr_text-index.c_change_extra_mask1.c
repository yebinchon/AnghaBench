
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_EXTRA_FIELDS ;
 int current_extra_mask ;
 scalar_t__* extra_field_start_offset ;
 scalar_t__ extra_mask_changes ;
 int final_extra_mask ;

void change_extra_mask1 (int new_mask) {
  int i;
  ++extra_mask_changes;
  for (i = 0; i < MAX_EXTRA_FIELDS; i++) {
    if ((new_mask & (1 << i)) && extra_mask_changes >= extra_field_start_offset[i]) {
      current_extra_mask |= 1 << i;
    }
  }
  current_extra_mask &= new_mask & final_extra_mask;
}
