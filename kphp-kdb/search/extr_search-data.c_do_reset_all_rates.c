
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_SEARCH_RESET_ALL_RATES ;
 int alloc_log_event (int ,int,int) ;

int do_reset_all_rates (int p) {
  if (p < 0 || p >= 14) {
    return -1;
  }
  alloc_log_event (LEV_SEARCH_RESET_ALL_RATES, 8, p);
  return 1;
}
