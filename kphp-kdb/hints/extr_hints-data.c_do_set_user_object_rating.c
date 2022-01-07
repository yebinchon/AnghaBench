
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_set_user_object_rating {int user_id; long long object_id; float val; } ;


 scalar_t__ LEV_HINTS_SET_USER_OBJECT_RATING ;
 struct lev_hints_set_user_object_rating* alloc_log_event (scalar_t__,int,int ) ;
 int check_object_id (long long) ;
 int check_rating (float) ;
 int check_rating_num (int) ;
 int check_type (int) ;
 int set_user_object_rating (struct lev_hints_set_user_object_rating*) ;

int do_set_user_object_rating (int user_id, int object_type, long long object_id, float new_rating, int num) {
  if (!check_type (object_type) || !check_rating_num (num) || !check_object_id (object_id) || !check_rating (new_rating)) {
    return 0;
  }

  struct lev_hints_set_user_object_rating *E =
    alloc_log_event (LEV_HINTS_SET_USER_OBJECT_RATING + (num << 8) + object_type, sizeof (struct lev_hints_set_user_object_rating), 0);

  E->user_id = user_id;
  E->object_id = object_id;
  E->val = new_rating;

  return set_user_object_rating (E);
}
