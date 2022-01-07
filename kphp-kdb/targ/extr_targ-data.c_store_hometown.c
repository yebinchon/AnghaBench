
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hometown_hashes; scalar_t__ hometown; int uid; } ;
typedef TYPE_1__ user_t ;


 int add_user_hashlist (int ,scalar_t__) ;
 int assert (int) ;
 int delete_user_hashlist (int ,scalar_t__) ;
 scalar_t__ exact_strdup (char*,int) ;
 int exact_strfree (scalar_t__) ;
 int q_hometown ;
 scalar_t__ save_words_hashlist (scalar_t__,int ,int ) ;

int store_hometown (user_t *U, char *hometown, int len) {
  int i;
  assert (len <= 255);
  assert (!hometown[len]);
  for (i = 0; i < len; i++) {
    assert ((unsigned char) hometown[i] >= ' ');
  }
  exact_strfree (U->hometown);
  delete_user_hashlist (U->uid, U->hometown_hashes);

  if (len) {
    U->hometown = exact_strdup (hometown, len);
    U->hometown_hashes = save_words_hashlist (U->hometown, 0, q_hometown);
    add_user_hashlist (U->uid, U->hometown_hashes);
  } else {
    U->hometown = 0;
    U->hometown_hashes = 0;
  }

  return 1;
}
