
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_used; } ;
typedef TYPE_1__ user ;


 TYPE_1__* LRU_head ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int ltbl_get_rev (int *,int) ;
 int stderr ;
 int user_table ;
 TYPE_1__* users ;

void dump_lru (char *s, int x) {
  fprintf (stderr, "%s", s);
  user *u = LRU_head->next_used;
  int f = 0;
  while (u != LRU_head) {
    fprintf (stderr, "%d ", ltbl_get_rev (&user_table, (int)(u - users)));
    int y = ltbl_get_rev (&user_table, (int)(u - users));
    assert (y != x);
    u = u->next_used;
    f |= x == -y;
  }
  if (x < 0) {
    assert (f);
  }
  fprintf (stderr, "\n");
}
