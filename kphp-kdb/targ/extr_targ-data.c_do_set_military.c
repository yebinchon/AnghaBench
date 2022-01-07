
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_military {int unit_id; int start; int finish; } ;


 int LEV_TARG_MIL_ADD ;
 struct lev_military* alloc_log_event (int ,int,int) ;
 int * get_user (int) ;
 int store_military (int *,struct lev_military*) ;

int do_set_military (int user_id, int unit_id, int start, int finish) {
  user_t *U = get_user (user_id);
  if (!U) {
    return 0;
  }

  struct lev_military *E = alloc_log_event (LEV_TARG_MIL_ADD, sizeof (struct lev_military), user_id);

  E->unit_id = unit_id;
  E->start = start;
  E->finish = finish;

  store_military (U, E);
  return 1;
}
