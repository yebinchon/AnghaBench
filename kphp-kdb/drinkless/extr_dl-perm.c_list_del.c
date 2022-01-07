
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* l; struct TYPE_3__* r; } ;
typedef TYPE_1__ perm_list ;



void list_del (perm_list *x) {
  perm_list *a = x->l, *b = x->r;
  a->r = b;
  b->l = a;
}
