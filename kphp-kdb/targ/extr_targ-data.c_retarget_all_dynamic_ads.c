
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pending_signals ;
 scalar_t__ retarget_dynamic_ads () ;

int retarget_all_dynamic_ads (void) {
  int res = 0;
  while (retarget_dynamic_ads () > 0 && !pending_signals) {
    res++;
  }
  return res;
}
