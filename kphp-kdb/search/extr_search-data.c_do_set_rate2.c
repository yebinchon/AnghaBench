
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_search_set_rate {long long obj_id; } ;


 int LEV_SEARCH_SET_RATE2 ;
 struct lev_search_set_rate* alloc_log_event (int ,int,int) ;
 int fits (long long) ;
 int set_rate2 (long long,int) ;

int do_set_rate2 (long long item_id, int rate2) {
  if (!fits (item_id)) { return 0; }
  struct lev_search_set_rate *LR = alloc_log_event (LEV_SEARCH_SET_RATE2, 16, rate2);
  LR->obj_id = item_id;
  return set_rate2 (item_id, rate2);
}
