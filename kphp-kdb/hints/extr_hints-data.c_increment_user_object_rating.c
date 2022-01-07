
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_increment_user_object_rating {int type; int cnt; int object_id; int user_id; } ;


 int LEV_HINTS_INCREMENT_USER_OBJECT_RATING ;
 int * conv_user_id (int ) ;
 int user_object_rating_increment (int *,int,int ,int ,int) ;

int increment_user_object_rating (struct lev_hints_increment_user_object_rating *E) {
  user *cur_user = conv_user_id (E->user_id);
  if (cur_user != ((void*)0)) {
    return user_object_rating_increment (cur_user, E->type & 0xff, E->object_id, E->cnt, (E->type - LEV_HINTS_INCREMENT_USER_OBJECT_RATING) >> 8);
  }

  return 0;
}
