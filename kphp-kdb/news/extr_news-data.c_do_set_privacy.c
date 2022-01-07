
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_privacy {int privacy; } ;


 int LEV_NEWS_PRIVACY ;
 struct lev_privacy* alloc_log_event (int ,int,int) ;
 scalar_t__ conv_uid (int) ;
 int set_privacy (int,int) ;

int do_set_privacy (int user_id, int mask) {
  if (conv_uid (user_id) < 0) {
    return -1;
  }
  struct lev_privacy *E = alloc_log_event (LEV_NEWS_PRIVACY, 12, user_id);
  E->privacy = mask | 1;
  return set_privacy (user_id, mask);
}
