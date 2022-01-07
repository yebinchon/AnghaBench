
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_news_comment_hide {int place; int item; } ;


 scalar_t__ COMM_MODE ;
 scalar_t__ LEV_NEWS_HIDEITEM ;
 struct lev_news_comment_hide* alloc_log_event (scalar_t__,int,int) ;
 int check_obj (int,int,int) ;
 int show_hide_comment (int,int,int,int,int ) ;
 int show_hide_notify (int,int,int,int,int ) ;

int do_delete_comment (int type, int owner, int place, int item) {
  if (!check_obj (type, owner, place)) {
    return -1;
  }
  struct lev_news_comment_hide *E = alloc_log_event (LEV_NEWS_HIDEITEM + type, 16, owner);
  E->place = place;
  E->item = item;

  if (COMM_MODE) {
    return show_hide_comment (type, owner, place, item, 0);
  } else {
    return show_hide_notify (type, owner, place, item, 0);
  }
}
