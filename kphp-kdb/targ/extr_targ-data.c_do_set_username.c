
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_username {int s; } ;


 scalar_t__ LEV_TARG_USERNAME ;
 struct lev_username* alloc_log_event (scalar_t__,int,int) ;
 scalar_t__ conv_user_id (int) ;
 int filter_text (int ,char const*,int) ;
 int set_username (struct lev_username*,int) ;

int do_set_username (int user_id, const char *text, int len) {
  if ((unsigned)len >= 256 || conv_user_id (user_id) < 0) {
    return 0;
  }
  struct lev_username *E = alloc_log_event (LEV_TARG_USERNAME + len, 9 + len, user_id);
  filter_text (E->s, text, len);
  return set_username (E, len);
}
