
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * A; } ;
typedef TYPE_1__ hash_list_t ;


 int add_user_word (int,int ) ;

void add_user_hashlist (int uid, hash_list_t *H) {
  int i;
  if (!H || H->len <= 0) { return; }
  for (i = 0; i < H->len; i++) {
    add_user_word (uid, H->A[i]);
  }
}
