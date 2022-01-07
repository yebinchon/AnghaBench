
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv_mask; } ;
typedef TYPE_1__ user_t ;


 int UG_MODE ;
 int assert (int ) ;
 TYPE_1__* get_user_f (int,int) ;

__attribute__((used)) static int set_privacy (int user_id, int mask) {
  assert (UG_MODE);
  user_t *U = get_user_f (user_id, 1);
  if (!U) {
    return -1;
  }
  U->priv_mask = mask | 1;
  return 1;
}
