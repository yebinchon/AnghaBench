
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;


 int UNPACK_BOOKMARK (int ,int,int,int) ;
 scalar_t__ advance_iterator () ;
 int init_iterator (int,int) ;
 TYPE_1__ iterator ;

int get_bookmarks (int user_id, int mask, int *Q, int max_res) {
  int res = init_iterator (user_id, 1);
  if (res < 0) {
    return res;
  }
  res = 0;
  while (res < max_res && advance_iterator () >= 0) {
    UNPACK_BOOKMARK(iterator.value, Q[3 * res + 0], Q[3 * res + 1], Q[3 * res + 2]);
    if ((1 << Q[3 * res + 0]) & mask) {
      res ++;
    }
  }
  return res;
}
