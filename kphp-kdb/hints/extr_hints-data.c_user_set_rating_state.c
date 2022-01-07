
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chg_list_en; int chg_list_st; } ;
typedef TYPE_1__ user ;
struct lev_hints_set_user_rating_state {int type; int user_id; } ;


 int chg_list_add_string (int *,int *,int,int ,int *) ;
 TYPE_1__* conv_user_id (int ) ;

int user_set_rating_state (struct lev_hints_set_user_rating_state *E) {
  int state = (E->type & 0xff);
  if (state >= 2 || state < 0) {
    return 0;
  }

  user *cur_user = conv_user_id (E->user_id);
  if (cur_user != ((void*)0)) {
    chg_list_add_string (&cur_user->chg_list_st, &cur_user->chg_list_en, state + 1, 0, ((void*)0));
    return 1;
  }

  return 0;
}
