
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_proposal {int len; int text; int user_id; } ;


 int LEV_TARG_PROPOSAL ;
 struct lev_proposal* alloc_log_event (int ,int,int) ;
 scalar_t__ conv_user_id (int) ;
 int filter_simple_text (int ,char const*,int) ;
 int * get_user (int ) ;
 int store_proposal (int *,int ,int) ;

int do_set_proposal (int user_id, const char *text, int len) {
  if (len < 0 || len >= 1024 || conv_user_id (user_id) < 0) {
    return 0;
  }
  struct lev_proposal *E = alloc_log_event (LEV_TARG_PROPOSAL, 11+len, user_id);

  E->len = len;
  filter_simple_text (E->text, text, len);

  user_t *U = get_user (E->user_id);

  if (U) {
    return store_proposal (U, E->text, len);
  } else {
    return 0;
  }
}
