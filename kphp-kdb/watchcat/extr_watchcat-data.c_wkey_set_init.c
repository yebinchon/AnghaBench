
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * root; scalar_t__ size; } ;
typedef TYPE_1__ wkey_set ;



void wkey_set_init (wkey_set *tr) {
  tr->size = 0;
  tr->root = ((void*)0);
}
