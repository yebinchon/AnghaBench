
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next_used; struct TYPE_5__* prev_used; } ;
typedef TYPE_1__ user ;


 TYPE_1__* LRU_head ;
 int assert (int ) ;
 int user_loaded (TYPE_1__*) ;

void add_user_used (user *u) {
  assert (u != ((void*)0));
  assert (user_loaded (u));

  assert (u->prev_used == ((void*)0));
  assert (u->next_used == ((void*)0));

  user *y = LRU_head->prev_used;

  u->next_used = LRU_head;
  LRU_head->prev_used = u;

  u->prev_used = y;
  y->next_used = u;
}
