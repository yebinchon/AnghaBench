
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_del_user_object {int user_id; long long object_id; } ;


 scalar_t__ LEV_HINTS_DEL_USER_OBJECT ;
 struct lev_hints_del_user_object* alloc_log_event (scalar_t__,int,int ) ;
 int check_object_id (long long) ;
 int check_type (int) ;
 int del_user_object (struct lev_hints_del_user_object*) ;

int do_del_user_object (int user_id, int object_type, long long object_id) {
  if (!check_type (object_type) || !check_object_id (object_id)) {
    return 0;
  }

  struct lev_hints_del_user_object *E =
    alloc_log_event (LEV_HINTS_DEL_USER_OBJECT + object_type, sizeof (struct lev_hints_del_user_object), 0);

  E->user_id = user_id;
  E->object_id = object_id;

  return del_user_object (E);
}
