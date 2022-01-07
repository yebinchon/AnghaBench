
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_t ;
struct TYPE_4__ {int len; int * A; } ;
typedef TYPE_1__ hash_list_t ;


 int delete_user_word (int,int ) ;
 int dyn_free (TYPE_1__*,int,int) ;

void delete_user_hashlist (int uid, hash_list_t *H) {
  int i;
  if (!H || H->len <= 0) { return; }
  for (i = 0; i < H->len; i++) {
    delete_user_word (uid, H->A[i]);
  }
  dyn_free (H, 8 + H->len * sizeof(hash_t), 8);
}
