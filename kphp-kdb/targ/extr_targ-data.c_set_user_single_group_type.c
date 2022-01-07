
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* user_group_types; } ;
typedef TYPE_1__ user_t ;
struct lev_generic {int type; int a; } ;


 TYPE_1__* get_user (int ) ;

__attribute__((used)) static int set_user_single_group_type (struct lev_generic *E) {
  user_t *U = get_user (E->a);
  if (!U) {
    return 0;
  }
  unsigned type = E->type & 0x7f;
  U->user_group_types[type >> 5] |= (1 << (type & 31));
  return 1;
}
