
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_photo; } ;
typedef TYPE_1__ user_t ;


 TYPE_1__* get_user (int) ;

int get_has_photo (int user_id) {
  user_t *U = get_user (user_id);
  if (U) {
    return U->has_photo & 0x07;
  }
  return -1;
}
