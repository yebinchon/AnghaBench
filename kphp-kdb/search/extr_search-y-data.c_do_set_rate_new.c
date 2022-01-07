
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_search_set_rate_new {long long obj_id; } ;


 scalar_t__ LEV_SEARCH_SET_RATE_NEW ;
 struct lev_search_set_rate_new* alloc_log_event (scalar_t__,int,int) ;
 int fits (long long) ;
 int set_rate_new (long long,int,int) ;

int do_set_rate_new (long long item_id, int p, int rate) {
  if (!fits (item_id)) { return 0; }
  struct lev_search_set_rate_new *LR = alloc_log_event (LEV_SEARCH_SET_RATE_NEW + p, 16, rate);
  LR->obj_id = item_id;
  return set_rate_new (item_id, p, rate);
}
