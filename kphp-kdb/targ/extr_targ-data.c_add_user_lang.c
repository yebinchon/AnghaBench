
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uid; } ;
typedef TYPE_1__ user_t ;


 unsigned int MAX_LANGS ;
 int add_user_word (int ,int ) ;
 int field_value_hash (int ,int) ;
 int max_lang_id ;
 int min_lang_id ;
 int q_lang_id ;
 int user_lang_pairs ;

__attribute__((used)) static int add_user_lang (user_t *U, int lang_id) {
  if ((unsigned) lang_id >= MAX_LANGS) {
    return -1;
  }
  if (lang_id > max_lang_id) {
    max_lang_id = lang_id;
  }
  if (lang_id < min_lang_id) {
    min_lang_id = lang_id;
  }

  user_lang_pairs++;

  add_user_word (U->uid, field_value_hash (q_lang_id, lang_id));

  return 1;
}
