
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int religion_hashes; int uid; int religion; } ;
typedef TYPE_1__ user_t ;
struct lev_religion {char* str; int type; int user_id; } ;


 int add_user_hashlist (int ,int ) ;
 int assert (int) ;
 int delete_user_hashlist (int ,int ) ;
 int exact_stralloc (int) ;
 int exact_strfree (int ) ;
 int filter_simple_text (int ,char*,int) ;
 TYPE_1__* get_user (int ) ;
 int q_religion ;
 int save_words_hashlist (int ,int ,int ) ;

__attribute__((used)) static int store_religion (struct lev_religion *E, int sz) {
  char *ptr = E->str;
  int len = E->type & 0xff;
  user_t *U;

  if (sz < len+9) { return -2; }

  assert (!ptr[len]);


  U = get_user (E->user_id);

  if (U) {
    exact_strfree (U->religion);
    U->religion = exact_stralloc (len);
    filter_simple_text (U->religion, ptr, len);
    delete_user_hashlist (U->uid, U->religion_hashes);
    U->religion_hashes = save_words_hashlist (U->religion, 0, q_religion);
    add_user_hashlist (U->uid, U->religion_hashes);
  }

  return 9+len;
}
