
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next_used; struct TYPE_6__* prev_used; } ;
typedef TYPE_1__ user ;


 TYPE_1__* LRU_head ;
 int assert (int ) ;
 int dump_lru (char*,int) ;
 int ltbl_get_rev (int *,int) ;
 int sprintf (char*,char*,int) ;
 int user_loaded (TYPE_1__*) ;
 int user_table ;
 TYPE_1__* users ;
 int verbosity ;

void add_user_used (user *u) {
  if (verbosity > 3) {
    char tmp[100];
    sprintf (tmp, "?(+%d)", ltbl_get_rev (&user_table, (int)(u - users)));
    dump_lru (tmp, ltbl_get_rev (&user_table, (int)(u - users)));
  }

  assert (u != ((void*)0));
  assert (user_loaded (u));

  assert (u->prev_used == ((void*)0));
  assert (u->next_used == ((void*)0));

  user *y = LRU_head->prev_used;

  u->next_used = LRU_head;
  LRU_head->prev_used = u;

  u->prev_used = y;
  y->next_used = u;
  if (verbosity > 3) {
    dump_lru ("!", 0);
  }
}
