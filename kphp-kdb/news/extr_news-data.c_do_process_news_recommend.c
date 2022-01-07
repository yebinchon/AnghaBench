
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_news_recommend {int owner; int place; int action; int item; int item_creation_time; } ;


 scalar_t__ LEV_NEWS_RECOMMEND ;
 int RECOMMEND_MODE ;
 struct lev_news_recommend* alloc_log_event (scalar_t__,int,int) ;
 scalar_t__ conv_uid (int) ;
 int process_news_recommend (struct lev_news_recommend*) ;
 int * recommend_item_f (int,int,int,int,int) ;
 int valid_type (int) ;
 int vkprintf (int,char*,int,int,int,int,int) ;

int do_process_news_recommend (int user_id, int type, int owner, int place, int action, int item, int item_creation_time) {
  if (conv_uid (user_id) < 0 || !RECOMMEND_MODE || !valid_type (type)) {
    return -1;
  }
  if (recommend_item_f (user_id, type, owner, place, action) != ((void*)0)) {
    vkprintf (4, "recommend_item_f (%d, %d, %d, %d, %d) returns not NULL.\n", user_id, type, owner, place, action);
    return 0;
  }

  struct lev_news_recommend *E = alloc_log_event (LEV_NEWS_RECOMMEND + type, sizeof (*E), user_id);
  E->owner = owner;
  E->place = place;
  E->action = action;
  E->item = item;

  E->item_creation_time = item_creation_time;

  return process_news_recommend (E);
}
