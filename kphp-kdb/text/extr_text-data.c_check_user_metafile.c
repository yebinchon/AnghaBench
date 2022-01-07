
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mf; } ;
typedef TYPE_2__ user_t ;
struct TYPE_4__ {int len; scalar_t__ aio; } ;


 TYPE_2__* get_user (long long) ;

int check_user_metafile (long long user_id, int *R) {
  user_t *U = get_user (user_id);

  if (!U || !U->mf || U->mf->aio) {
    return 0;
  }

  if (R) {
    R[0] = U->mf->len;
  }

  return 1;
}
