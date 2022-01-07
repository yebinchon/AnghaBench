
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_increment_user_object_rating_char {int type; int object_id; int user_id; } ;


 int LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR ;
 int * conv_user_id (int ) ;
 int user_object_rating_increment (int *,int,int ,int,int) ;

int increment_user_object_rating_char (struct lev_hints_increment_user_object_rating_char *E) {
  user *cur_user = conv_user_id (E->user_id);
  if (cur_user != ((void*)0)) {
    return user_object_rating_increment (cur_user, E->type & 0xff, E->object_id, (E->type & 0xff00) >> 8, (E->type - LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR) >> 16);
  }

  return 0;
}
