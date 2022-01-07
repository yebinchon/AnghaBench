
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_group_types; } ;
typedef TYPE_1__ user_t ;
struct lev_targ_user_group_types {int user_group_types; int user_id; } ;


 TYPE_1__* get_user (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int set_user_group_types (struct lev_targ_user_group_types *E) {
  user_t *U = get_user (E->user_id);
  if (!U) {
    return 0;
  }
  memcpy (U->user_group_types, E->user_group_types, 16);
  return 1;
}
