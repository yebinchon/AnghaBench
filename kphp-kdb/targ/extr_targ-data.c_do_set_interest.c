
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_interests {int len; int text; } ;


 scalar_t__ LEV_TARG_INTERESTS ;
 int MAX_INTERESTS ;
 struct lev_interests* alloc_log_event (scalar_t__,int,int) ;
 int filter_text (int ,char const*,int) ;
 int store_interests (struct lev_interests*,int) ;

int do_set_interest (int user_id, const char *text, int len, int type) {
  if (type < 1 || type > MAX_INTERESTS || (unsigned) len > 65520) {
    return 0;
  }
  struct lev_interests *E = alloc_log_event (LEV_TARG_INTERESTS + type, len + 11, user_id);
  E->len = len;
  filter_text (E->text, text, len);
  store_interests (E, len + 11);
  return 1;
}
