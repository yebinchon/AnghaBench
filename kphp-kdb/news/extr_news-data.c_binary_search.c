
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bookmark_user {int user_id; } ;


 int assert (int) ;

int binary_search (int v, struct bookmark_user *users, int num) {
  int l = -1;
  int r = num;
  while (r - l > 1) {
    int x = (l + r) >> 1;
    assert (x >= 0);
    if (users[x].user_id <= v) {
      l = x;
    } else {
      r = x;
    }
  }
  if (l >= 0 && users[l].user_id == v) {
    return l;
  } else {
    return -1;
  }
}
