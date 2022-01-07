
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int b; struct TYPE_4__* r; } ;
typedef TYPE_1__ perm_list ;
struct TYPE_5__ {scalar_t__ len; TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm_list ;


 int max (scalar_t__,int ) ;

int dl_perm_list_slice (dl_perm_list *p, int *a, int n, int offset) {
  perm_list *st = p->v, *v = st->r;

  int ln = 0;

  while (v != st) {
    int x;
    for (x = v->a; x < v->b; x++) {
      if (offset > 0) {
        offset--;
      } else {
        if (n) {
          *a++ = x;
          n--;
          ln++;
        }
      }
    }
    v = v->r;
  }
  return max (p->len - offset, 0);
}
