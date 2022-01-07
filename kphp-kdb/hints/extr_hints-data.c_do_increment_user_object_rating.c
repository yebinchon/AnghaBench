
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_increment_user_object_rating_char {int user_id; long long object_id; } ;
struct lev_hints_increment_user_object_rating {int user_id; long long object_id; int cnt; } ;


 scalar_t__ LEV_HINTS_INCREMENT_USER_OBJECT_RATING ;
 scalar_t__ LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR ;
 void* alloc_log_event (scalar_t__,int,int) ;
 int check_object_id (long long) ;
 int check_rating (int) ;
 int check_rating_num (int) ;
 int check_type (int) ;
 int fading ;
 int increment_user_object_rating (struct lev_hints_increment_user_object_rating*) ;
 int increment_user_object_rating_char (struct lev_hints_increment_user_object_rating_char*) ;

int do_increment_user_object_rating (int user_id, int object_type, long long object_id, int cnt, int num) {
  if (!fading) {
    cnt += 128;
  }
  if (!check_rating (cnt) || !check_type (object_type) || !check_rating_num (num) || !check_object_id (object_id)) {
    return 0;
  }

  if (cnt & -0x100) {
    struct lev_hints_increment_user_object_rating *E =
      alloc_log_event (LEV_HINTS_INCREMENT_USER_OBJECT_RATING + object_type + (num << 8), sizeof (struct lev_hints_increment_user_object_rating), user_id);

    E->user_id = user_id;
    E->object_id = object_id;
    E->cnt = cnt;

    return increment_user_object_rating (E);
  } else {
    struct lev_hints_increment_user_object_rating_char *E =
      alloc_log_event (LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR + object_type + (cnt << 8) + (num << 16), sizeof (struct lev_hints_increment_user_object_rating_char), user_id);

    E->user_id = user_id;
    E->object_id = object_id;

    return increment_user_object_rating_char (E);
  }
}
