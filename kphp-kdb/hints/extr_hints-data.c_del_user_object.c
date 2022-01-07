
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_del_user_object {int type; int object_id; int user_id; } ;


 int * conv_user_id (int ) ;
 int user_del_object (int *,int,int ,int ) ;

int del_user_object (struct lev_hints_del_user_object *E) {
  user *cur_user = conv_user_id (E->user_id);

  if (cur_user != ((void*)0)) {
    return user_del_object (cur_user, E->type & 0xff, E->object_id, 0);
  }

  return 0;
}
