
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int perm_list ;
struct TYPE_6__ {int n; int len; TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm_list ;
struct TYPE_5__ {int r; } ;


 int assert (int) ;
 int dl_perm_list_get_rev_i (TYPE_2__*,int) ;
 int list_add (int *,int *) ;
 int * list_alloc (int,int) ;
 int * move_r (int ,int) ;

int dl_perm_list_move_and_create (dl_perm_list *p, int id, int i) {
  if (!(0 <= id && id < p->n)) {
    return -1;
  }
  if (!(0 <= i && i <= p->len)) {
    return -1;
  }

  assert (dl_perm_list_get_rev_i (p, id) == -1);

  perm_list *v = move_r (p->v->r, i), *add;
  add = list_alloc (id, id + 1);
  list_add (v, add);

  p->len++;

  return 0;
}
