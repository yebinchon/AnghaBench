
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int history_ts; int* history; } ;
typedef TYPE_1__ user_t ;


 unsigned int HISTORY_EVENTS ;
 TYPE_1__* get_user (int) ;

int get_history (int user_id, int timestamp, int limit, int *R) {
  user_t *U;
  int N;

  U = get_user (user_id);
  if (!U || !U->history_ts) {
    return -1;
  }

  N = U->history_ts - timestamp;
  if (!N) {
    return 0;
  }
  if ((unsigned) N > HISTORY_EVENTS) {
    return -1;
  }
  if (!U->history) {
    return -1;
  }
  if (limit > 0 && N > limit) {
    N = limit;
  }

  int count = N;
  while (count --> 0) {
    int i = ++timestamp & (HISTORY_EVENTS - 1);
    int a = U->history[i*2+1], b = U->history[i*2];
    if (!a && !b) {
      return -1;
    }
    *R++ = ((unsigned) a >> 24);
    *R++ = b;
    *R++ = a & 0xffffff;
  }

  return N;
}
