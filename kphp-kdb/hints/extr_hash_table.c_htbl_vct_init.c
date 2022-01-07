
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * h; scalar_t__ size; } ;
typedef TYPE_1__ hash_table_vct ;



void htbl_vct_init (hash_table_vct *table) {
  table->size = 0;
  table->h = ((void*)0);
}
