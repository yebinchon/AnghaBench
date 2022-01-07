
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * e; scalar_t__ size; scalar_t__ n; } ;
typedef TYPE_1__ qhash_table ;



void qhtbl_init (qhash_table *ht) {
  ht->n = 0;
  ht->size = 0;
  ht->e = ((void*)0);
}
