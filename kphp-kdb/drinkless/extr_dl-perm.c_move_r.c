
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int b; int a; struct TYPE_7__* l; struct TYPE_7__* r; } ;
typedef TYPE_1__ perm_list ;


 int list_add (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* list_alloc (int,int) ;

perm_list *move_r (perm_list *v, int n) {
  while (n > 0) {
    int cn = v->b - v->a;
    if (cn <= n) {
      n -= cn;
      v = v->r;
    } else {
      perm_list *u = list_alloc (v->a + n, v->b);
      v->b = v->a + n;
      list_add (v, u);
      return v;
    }
  }
  return v->l;
}
