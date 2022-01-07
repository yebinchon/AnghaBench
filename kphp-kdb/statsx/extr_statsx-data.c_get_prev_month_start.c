
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_prev_month_end (int) ;

int get_prev_month_start (int day) {
  return get_prev_month_end (get_prev_month_end (day)) + 1;
}
