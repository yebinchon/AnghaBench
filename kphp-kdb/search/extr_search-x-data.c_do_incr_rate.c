
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_search_incr_rate_short {long long obj_id; } ;
struct lev_search_incr_rate {long long obj_id; } ;


 scalar_t__ LEV_SEARCH_INCR_RATE ;
 scalar_t__ LEV_SEARCH_INCR_RATE_SHORT ;
 void* alloc_log_event (scalar_t__,int,int) ;
 int fits (long long) ;
 int incr_rate (long long,int) ;

int do_incr_rate (long long item_id, int rate_incr) {
  if (!fits (item_id)) { return 0; }
  if (rate_incr == (signed char) rate_incr) {
    struct lev_search_incr_rate_short *IS = alloc_log_event (LEV_SEARCH_INCR_RATE_SHORT + (rate_incr & 0xff), 12, 0);
    IS->obj_id = item_id;
  } else {
    struct lev_search_incr_rate *IL = alloc_log_event (LEV_SEARCH_INCR_RATE, 16, rate_incr);
    IL->obj_id = item_id;
  }
  return incr_rate (item_id, rate_incr);
}
