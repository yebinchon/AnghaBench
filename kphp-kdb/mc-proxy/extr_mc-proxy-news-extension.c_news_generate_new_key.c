
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct news_gather_extra {int mask; int st_time; int end_time; int request_tag; int user_mode; int user_id; } ;


 scalar_t__ NEWS_G_EXTENSION ;
 scalar_t__ NEWS_UG_EXTENSION ;
 int assert (int ) ;
 int sprintf (char*,char*,int,int,...) ;

int news_generate_new_key (char *buff, char *key, int len, void *E) {
  struct news_gather_extra *extra = E;
  int r = 0;

  if ((NEWS_UG_EXTENSION || NEWS_G_EXTENSION)) {
    r = sprintf (buff, "%%raw_updates%d[%d,%d]:%d", extra->mask, extra->st_time, extra->end_time, extra->request_tag);
  } else {
    if (!extra->user_mode) {
      r = sprintf (buff, "%%raw_comm_updates[%d,%d]:%d", extra->st_time, extra->end_time, extra->request_tag);
    } else if (extra->user_mode == 1) {
      r = sprintf (buff, "%%raw_user_comm_updates[%d,%d]:%d,%d", extra->st_time, extra->end_time, extra->user_id, extra->mask);
    } else if (extra->user_mode == 2) {
      r = sprintf (buff, "%%raw_user_comm_bookmarks%d,%d", extra->user_id, extra->mask);
    } else {
      assert (0);
    }
  }
  return r;
}
