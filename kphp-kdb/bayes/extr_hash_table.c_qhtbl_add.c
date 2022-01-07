
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int n; TYPE_1__* e; } ;
typedef TYPE_2__ qhash_table ;
typedef int pair ;
typedef scalar_t__ ll ;
struct TYPE_5__ {scalar_t__ h; int val; } ;


 int assert (int) ;
 int qhtbl_set_size (TYPE_2__*,int) ;

inline pair *qhtbl_add (qhash_table *ht, ll h) {
  assert (ht->size < 400000000);
  if (ht->size * 5 / 4 >= ht->n) {
    int new_size = ht->size * 3 / 2;
    if (new_size < 100) {
      new_size = 100;
    }
    qhtbl_set_size (ht, new_size);
  }

  int i = (unsigned int)h % ht->n;

  while (ht->e[i].h != h && ht->e[i].h) {
    if (++i == ht->n) {
      i = 0;
    }
  }

  if (ht->e[i].h != h) {
    ht->e[i].h = h;
    ht->size++;
  }

  return &ht->e[i].val;
}
