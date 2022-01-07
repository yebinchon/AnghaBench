
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ advance_iterator () ;
 int init_iterator (int,int) ;

int get_bookmarks_num (int user_id, int use_aio) {
  int res = init_iterator (user_id, use_aio);
  if (res < 0) {
    return res;
  }
  res = 0;
  while (advance_iterator () >= 0) {
    res ++;
  }
  return res;
}
