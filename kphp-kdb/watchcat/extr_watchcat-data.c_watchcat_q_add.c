
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vn; struct TYPE_4__* parent; struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ watchcat ;



inline void watchcat_q_add (watchcat *f, watchcat *e) {
  watchcat *b = f->prev;

  e->next = f;
  f->prev = e;

  e->prev = b;
  b->next = e;

  e->parent = f;
  if (f->vn < 2000000000) {
    f->vn++;
  }
}
