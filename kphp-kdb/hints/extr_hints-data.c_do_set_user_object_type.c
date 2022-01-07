
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_set_user_object_type {int user_id; long long object_id; } ;


 scalar_t__ LEV_HINTS_SET_USER_OBJECT_TYPE ;
 struct lev_hints_set_user_object_type* alloc_log_event (scalar_t__,int,int ) ;
 int check_object_id (long long) ;
 int check_type (int) ;
 int set_user_object_type (struct lev_hints_set_user_object_type*) ;

int do_set_user_object_type (int user_id, int object_type, long long object_id, int new_object_type) {
  if (!check_type (object_type) || !check_type (new_object_type) || !check_object_id (object_id)) {
    return 0;
  }

  struct lev_hints_set_user_object_type *E =
    alloc_log_event (LEV_HINTS_SET_USER_OBJECT_TYPE + 256 * object_type + new_object_type, sizeof (struct lev_hints_set_user_object_type), 0);

  E->user_id = user_id;
  E->object_id = object_id;

  return set_user_object_type (E);
}
