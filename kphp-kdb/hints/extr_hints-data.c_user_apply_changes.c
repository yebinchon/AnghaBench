
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_4__* chg_list_global; TYPE_4__* chg_list_cur; } ;
typedef TYPE_1__ user ;
struct TYPE_7__ {scalar_t__ number; int type; int x; struct TYPE_7__* next; } ;


 int USER_LOADED ;
 int assert (int) ;
 int user_do_change (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ user_has_object (TYPE_1__*,int,int ) ;

void user_apply_changes (user *u) {
  assert (u->flags & USER_LOADED);
  while (u->chg_list_cur->next != ((void*)0) || u->chg_list_global->next != ((void*)0)) {
    if (u->chg_list_global->next == ((void*)0) || (u->chg_list_cur->next != ((void*)0) &&
        u->chg_list_cur->next->number < u->chg_list_global->next->number)) {
      u->chg_list_cur = u->chg_list_cur->next;
      user_do_change (u, u->chg_list_cur);
    } else {
      u->chg_list_global = u->chg_list_global->next;
      int type = u->chg_list_global->type;
      if (type >= 256) {
        type -= 256;
      } else if (type < 0) {
        type = -type;
      }
      if (user_has_object (u, type, u->chg_list_global->x)) {
        user_do_change (u, u->chg_list_global);
      }
    }
  }
}
