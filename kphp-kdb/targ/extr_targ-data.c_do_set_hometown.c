
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_hometown {int text; int user_id; } ;


 scalar_t__ LEV_TARG_HOMETOWN ;
 struct lev_hometown* alloc_log_event (scalar_t__,int,int) ;
 scalar_t__ conv_user_id (int) ;
 int filter_simple_text (int ,char const*,int) ;
 int * get_user (int ) ;
 int store_hometown (int *,int ,int) ;

int do_set_hometown (int user_id, const char *text, int len) {
  if (len < 0 || len >= 256 || conv_user_id (user_id) < 0) {
    return 0;
  }
  struct lev_hometown *E = alloc_log_event (LEV_TARG_HOMETOWN + len, 9+len, user_id);

  filter_simple_text (E->text, text, len);

  user_t *U = get_user (E->user_id);

  if (U) {
    return store_hometown (U, E->text, len);
  } else {
    return 0;
  }
}
