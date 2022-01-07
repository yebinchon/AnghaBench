
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_set_user_object_type {int type; int object_id; int user_id; } ;


 int * conv_user_id (int ) ;
 int user_set_object_type (int *,int,int ,int) ;

int set_user_object_type (struct lev_hints_set_user_object_type *E) {
  user *cur_user = conv_user_id (E->user_id);
  if (cur_user != ((void*)0)) {
    return user_set_object_type (cur_user, (E->type >> 8) & 255, E->object_id, E->type & 255);
  }

  return 0;
}
