
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_add_user_object {int object_id; int object_type; int text; int user_id; int text_len; } ;


 int check_text_len (int ) ;
 int * conv_user_id (int ) ;
 int user_add_object (int *,int ,int ,...) ;

int add_user_object (struct lev_hints_add_user_object *E) {
  if (!check_text_len (E->text_len)) {
    return 0;
  }

  user *cur_user = conv_user_id (E->user_id);
  if (cur_user != ((void*)0)) {



    return user_add_object (cur_user, E->object_type, E->object_id);

  }

  return 0;
}
