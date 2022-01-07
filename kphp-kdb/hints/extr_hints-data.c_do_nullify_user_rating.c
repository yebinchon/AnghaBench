
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_nullify_user_rating {int user_id; } ;


 int LEV_HINTS_NULLIFY_USER_RATING ;
 struct lev_hints_nullify_user_rating* alloc_log_event (int ,int,int) ;
 int nullify_user_rating (struct lev_hints_nullify_user_rating*) ;

int do_nullify_user_rating (int user_id) {
  struct lev_hints_nullify_user_rating *E =
    alloc_log_event (LEV_HINTS_NULLIFY_USER_RATING, sizeof (struct lev_hints_nullify_user_rating), user_id);

  E->user_id = user_id;

  return nullify_user_rating (E);
}
