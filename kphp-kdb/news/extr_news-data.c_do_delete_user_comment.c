
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_news_user_comment_hide {int place; int item; int user_id; } ;


 scalar_t__ LEV_NEWS_HIDEUSERITEM ;
 int NOTIFY_MODE ;
 struct lev_news_user_comment_hide* alloc_log_event (scalar_t__,int,int) ;
 int check_obj (int,int,int) ;
 int show_hide_user_notify (int,int,int,int,int,int ) ;

int do_delete_user_comment (int user_id, int type, int owner, int place, int item) {
  if (!NOTIFY_MODE || !check_obj (type, owner, place)) {
    return -1;
  }
  struct lev_news_user_comment_hide *E = alloc_log_event (LEV_NEWS_HIDEUSERITEM + type, 20, owner);
  E->place = place;
  E->item = item;
  E->user_id = user_id;

  return show_hide_user_notify (user_id, type, owner, place, item, 0);
}
