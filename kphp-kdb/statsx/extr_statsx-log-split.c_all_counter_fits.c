
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_mod ;
 int copy_rem ;

int all_counter_fits (int counter_id) {
  if (counter_id <= 0) {
    counter_id = -counter_id;
  }
  return counter_id % copy_mod == copy_rem;
}
