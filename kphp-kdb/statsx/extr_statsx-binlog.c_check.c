
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {scalar_t__ a; } ;


 scalar_t__ ANY_COUNTER ;
 scalar_t__ cnt_id ;
 scalar_t__ now ;
 scalar_t__ start_time ;

inline int check (struct lev_generic *E) {
  return ((E->a == cnt_id || cnt_id == ANY_COUNTER) && now >= start_time);
}
