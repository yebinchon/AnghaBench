
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int * e; scalar_t__ size; } ;
typedef TYPE_1__ qhash_table ;
typedef int entry_t ;


 int qfree (int *,int) ;

void qhtbl_free (qhash_table *ht) {
  if (ht->e != ((void*)0)) {
    qfree (ht->e, ht->n * sizeof (entry_t));
    ht->n = 0;
    ht->size = 0;
    ht->e = ((void*)0);
  }
}
