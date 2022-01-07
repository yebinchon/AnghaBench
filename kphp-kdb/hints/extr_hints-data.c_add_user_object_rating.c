
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_add_user_object_rating {int type; int text_len; int object_id; int object_type; int text; int user_id; } ;
typedef int rating ;


 int LEV_HINTS_ADD_USER_OBJECT_RATING ;
 int check_text_len (int) ;
 int * conv_user_id (int ) ;
 int rating_num ;
 int user_add_object (int *,int ,int ,...) ;
 int user_set_object_rating (int *,int ,int ,int ,int) ;

int add_user_object_rating (struct lev_hints_add_user_object_rating *E) {
  int cur_rating_num = E->type - LEV_HINTS_ADD_USER_OBJECT_RATING;
  int text_len = E->text_len - sizeof (float) * cur_rating_num;

  if (!check_text_len (text_len)) {
    return 0;
  }

  user *cur_user = conv_user_id (E->user_id);
  if (cur_user != ((void*)0)) {
    int res, num;
    float *ratings;



    res = user_add_object (cur_user, E->object_type, E->object_id);

    ratings = (float *)(E->text + 1 + text_len);

    for (num = 0; num < rating_num && num < cur_rating_num; num++) {
      res &= user_set_object_rating (cur_user, E->object_type, E->object_id, (rating)ratings[num], num);
    }

    return res;
  }

  return 0;
}
