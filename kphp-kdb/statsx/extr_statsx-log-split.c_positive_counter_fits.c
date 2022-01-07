
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_mod ;
 int copy_rem ;

int positive_counter_fits (int counter_id) {
  if (counter_id <= 0) { return 0; }
  return counter_id % copy_mod == copy_rem;
}
