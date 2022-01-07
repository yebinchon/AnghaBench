
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; unsigned int n; TYPE_1__* e; } ;
typedef TYPE_2__ qhash_table ;
typedef int pair ;
typedef scalar_t__ ll ;
struct TYPE_4__ {scalar_t__ h; int val; } ;



inline pair *qhtbl_get (qhash_table *ht, ll h) {
  if (ht->size == 0) {
    return ((void*)0);
  }
  int i = (unsigned int)h % ht->n;

  while (ht->e[i].h != h && ht->e[i].h) {
    if (++i == ht->n) {
      i = 0;
    }
  }

  return ht->e[i].h ? &ht->e[i].val : ((void*)0);
}
