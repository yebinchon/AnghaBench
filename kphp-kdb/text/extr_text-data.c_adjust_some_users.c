
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* online_tree; } ;
typedef TYPE_2__ user_t ;
struct TYPE_5__ {int y; } ;


 TYPE_2__** User ;
 int adjust_online_tree (TYPE_2__*) ;
 int hold_online_time ;
 int max_uid ;
 int min_uid ;
 int now ;
 int scan_uid ;

void adjust_some_users (void) {
  user_t *U;
  int i = scan_uid, j = 2000, min_y = now - hold_online_time;
  if (j > max_uid) { j = max_uid; }
  while (j --> 0) {
    U = User[i++];
    if (i > max_uid) {
      i = min_uid;
    }
    if (U && U->online_tree && U->online_tree->y < min_y) {
      adjust_online_tree (U);
    }
  }
  scan_uid = i;
}
