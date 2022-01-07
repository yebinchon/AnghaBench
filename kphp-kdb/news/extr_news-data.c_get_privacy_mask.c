
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv_mask; } ;
typedef TYPE_1__ user_t ;


 scalar_t__ conv_uid (int) ;
 TYPE_1__* get_user (int) ;

int get_privacy_mask (int user_id) {
  user_t *U = get_user (user_id);
  if (!U) {
    return conv_uid (user_id) < 0 ? -1 : 1;
  }
  return U->priv_mask;
}
