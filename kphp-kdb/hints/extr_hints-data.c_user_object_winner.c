
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_hints_user_object_winner {int type; int losers_cnt; int * losers; int object_type; int winner_id; int user_id; } ;


 int LEV_HINTS_USER_OBJECT_WINNER ;
 int * conv_user_id (int ) ;
 int fading ;
 int user_object_rating_increment (int *,int ,int ,int,int) ;

int user_object_winner (struct lev_hints_user_object_winner *E) {
  if (!fading) {
    user *cur_user = conv_user_id (E->user_id);
    if (cur_user != ((void*)0)) {
      int num = E->type - LEV_HINTS_USER_OBJECT_WINNER;
      int i;
      int res = user_object_rating_increment (cur_user, E->object_type, E->winner_id, E->losers_cnt + 128, num);
      for (i = 0; i < E->losers_cnt; i++) {
        res = res & user_object_rating_increment (cur_user, E->object_type, E->losers[i], -1 + 128, num);
      }
      return res;
    }
  }
  return 0;
}
