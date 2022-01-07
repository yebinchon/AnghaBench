
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inter_hashes; int uid; scalar_t__ name; struct interest* inter; } ;
typedef TYPE_1__ user_t ;
struct interest {scalar_t__ text; struct interest* next; } ;


 scalar_t__ Hc ;
 int add_user_hashlist (int ,int ) ;
 int delete_user_hashlist (int ,int ) ;
 int prepare_words_hashlist (scalar_t__,int,int,int ,int ) ;
 int q_interests ;
 int save_words_hashlist (int ,int,int ) ;

__attribute__((used)) static void rehash_user_interests (user_t *U) {
  struct interest *I;
  if (!U) {
    return;
  }
  Hc = 0;
  for (I = U->inter; I; I = I->next) {
    prepare_words_hashlist (I->text, 1, -1, 0, q_interests);
  }
  if (U->name) {
    prepare_words_hashlist (U->name, 1, 2, 0, q_interests);
  }
  delete_user_hashlist (U->uid, U->inter_hashes);
  U->inter_hashes = save_words_hashlist (0, -1, q_interests);
  add_user_hashlist (U->uid, U->inter_hashes);
}
