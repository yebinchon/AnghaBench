
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_set_user_object_rating {int type; int val; int object_id; int user_id; } ;


 int LEV_HINTS_SET_USER_OBJECT_RATING ;
 int * conv_user_id (int ) ;
 int user_set_object_rating (int *,int,int ,int ,int) ;

int set_user_object_rating (struct lev_hints_set_user_object_rating *E) {
  user *cur_user = conv_user_id (E->user_id);

  if (cur_user != ((void*)0)) {
    int num = (E->type - LEV_HINTS_SET_USER_OBJECT_RATING) >> 8;

    return user_set_object_rating (cur_user, E->type & 0xff, E->object_id, E->val, num);
  }

  return 0;
}
