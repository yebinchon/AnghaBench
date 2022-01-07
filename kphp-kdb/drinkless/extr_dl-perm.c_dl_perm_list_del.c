
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ a; scalar_t__ b; } ;
typedef TYPE_2__ perm_list ;
struct TYPE_10__ {int len; TYPE_1__* v; } ;
typedef TYPE_3__ dl_perm_list ;
struct TYPE_8__ {TYPE_2__* r; } ;


 int dl_perm_list_move (TYPE_3__*,int,int ) ;
 int list_del (TYPE_2__*) ;
 int list_free (TYPE_2__*) ;

int dl_perm_list_del (dl_perm_list *p, int i) {
  if (!(0 <= i && i < p->len)) {
    return -1;
  }

  dl_perm_list_move (p, i, 0);
  perm_list *v = p->v->r;
  if (v->a + 1 == v->b) {
    list_del (v);
    list_free (v);
  } else {
    v->a++;
  }
  p->len--;
  return 0;
}
