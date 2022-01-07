
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chg_list_en; int chg_list_st; } ;
typedef TYPE_1__ user ;
struct lev_hints_nullify_user_rating {int user_id; } ;


 int chg_list_add_string (int *,int *,int ,int ,int *) ;
 TYPE_1__* conv_user_id (int ) ;

int nullify_user_rating (struct lev_hints_nullify_user_rating *E) {
  user *cur_user = conv_user_id (E->user_id);
  if (cur_user != ((void*)0)) {
    chg_list_add_string (&cur_user->chg_list_st, &cur_user->chg_list_en, 0, 0, ((void*)0));
    return 1;
  }

  return 0;
}
