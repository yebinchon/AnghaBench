
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long id; struct TYPE_4__* prev; struct TYPE_4__* next; scalar_t__ vn; } ;
typedef TYPE_1__ watchcat ;


 TYPE_1__* alloc_watchcat_q () ;
 int h_watchcat_q ;
 scalar_t__ hset_llp_add (int *,long long*) ;
 scalar_t__ hset_llp_get (int *,long long*) ;

inline watchcat *get_watchcat_q (long long id, int force) {
  watchcat **b;
  if (force) {
    b = (watchcat **)hset_llp_add (&h_watchcat_q, &id);
    if (*b == (watchcat *)&id) {
      watchcat *w = alloc_watchcat_q();

      w->id = id;
      w->vn = 0;
      w->next = w->prev = w;

      *b = w;
    }
    return *b;
  } else {
    b = (watchcat **)hset_llp_get (&h_watchcat_q, &id);
    return b == ((void*)0) ? ((void*)0) : *b;
  }
}
