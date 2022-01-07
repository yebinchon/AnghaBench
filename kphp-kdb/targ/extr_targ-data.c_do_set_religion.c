
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int religion_hashes; int uid; int religion; } ;
typedef TYPE_1__ user_t ;
struct lev_religion {int str; int user_id; } ;


 scalar_t__ LEV_TARG_RELIGION ;
 int add_user_hashlist (int ,int ) ;
 struct lev_religion* alloc_log_event (scalar_t__,int,int) ;
 scalar_t__ conv_user_id (int) ;
 int delete_user_hashlist (int ,int ) ;
 int exact_strdup (int ,int) ;
 int exact_strfree (int ) ;
 int filter_simple_text (int ,char const*,int) ;
 TYPE_1__* get_user (int ) ;
 int q_religion ;
 int save_words_hashlist (int ,int ,int ) ;

int do_set_religion (int user_id, const char *text, int len) {
  if (len < 0 || len >= 256 || conv_user_id (user_id) < 0) {
    return 0;
  }
  struct lev_religion *E = alloc_log_event (LEV_TARG_RELIGION + len, 9+len, user_id);

  filter_simple_text (E->str, text, len);

  user_t *U = get_user (E->user_id);

  if (U) {
    exact_strfree (U->religion);
    U->religion = exact_strdup (E->str, len);
    delete_user_hashlist (U->uid, U->religion_hashes);
    U->religion_hashes = save_words_hashlist (U->religion, 0, q_religion);
    add_user_hashlist (U->uid, U->religion_hashes);
    return 1;
  }

  return 0;
}
