
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l; struct TYPE_4__* r; } ;
typedef TYPE_1__ perm_list ;



void list_add (perm_list *a, perm_list *y) {
  perm_list *b = a->r;
  a->r = y;
  y->l = a;
  y->r = b;
  b->l = y;
}
