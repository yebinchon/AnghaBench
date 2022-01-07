
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* user_group_types; } ;
typedef TYPE_1__ user_t ;
struct lev_generic {int dummy; } ;


 scalar_t__ LEV_TARG_GRTYPE_ADD ;
 struct lev_generic* alloc_log_event (scalar_t__,int,int) ;
 TYPE_1__* get_user (int) ;
 int set_user_single_group_type (struct lev_generic*) ;

int do_set_user_single_group_type (int user_id, unsigned type) {
  user_t *U = get_user (user_id);
  if (!U || type > 127) {
    return 0;
  }
  if (U->user_group_types[type >> 5] & (1 << (type & 31))) {
    return 1;
  }
  struct lev_generic *E = alloc_log_event (LEV_TARG_GRTYPE_ADD + type, 8, user_id);
  return set_user_single_group_type (E);
}
