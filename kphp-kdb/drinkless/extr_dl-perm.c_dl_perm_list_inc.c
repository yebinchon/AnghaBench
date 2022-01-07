
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n; int len; TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm_list ;
struct TYPE_4__ {int l; } ;


 int list_add (int ,int ) ;
 int list_alloc (int,int) ;

void dl_perm_list_inc (dl_perm_list *p, int n) {
  if (n > 0) {
    int a = p->n,
        b = p->n += n;
    p->len += n;
    list_add (p->v->l, list_alloc (a, b));
  }
}
