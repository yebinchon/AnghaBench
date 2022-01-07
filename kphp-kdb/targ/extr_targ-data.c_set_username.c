
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name_hashes; int uid; int name; } ;
typedef TYPE_1__ user_t ;
struct lev_username {int user_id; char* s; } ;


 int add_user_hashlist (int ,int ) ;
 int assert (int) ;
 int delete_user_hashlist (int ,int ) ;
 int exact_strdup (char*,int) ;
 int exact_strfree (int ) ;
 int fprintf (int ,char*,int,char*,int) ;
 TYPE_1__* get_user_f (int) ;
 int q_name ;
 int rehash_user_interests (TYPE_1__*) ;
 int save_words_hashlist_pattern (int ,int ,int,int,int ) ;
 int stderr ;

__attribute__((used)) static int set_username (struct lev_username *E, int len) {
  int i, j = 0;
  int user_id = E->user_id;
  char *text = E->s;

  assert (!text[len]);



  for (i = 0; i < len; i++) {
    if (text[i] == 9) { j++; }
    else if ((unsigned char) text[i] < ' ') {
      fprintf (stderr, "name of %d: '%s' (len=%d)\n", user_id, text, len);

      break;
    }
  }
  assert (j >= 0);
  user_t *U = get_user_f (user_id);
  if (U) {
    exact_strfree (U->name);
    U->name = exact_strdup (text, len);
    delete_user_hashlist (U->uid, U->name_hashes);
    U->name_hashes = save_words_hashlist_pattern (U->name, 0, ~2, 1, q_name);
    add_user_hashlist (U->uid, U->name_hashes);

    rehash_user_interests (U);
    return 1;
  }
  return 0;
}
