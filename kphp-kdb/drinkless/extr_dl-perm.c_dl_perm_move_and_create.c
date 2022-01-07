
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_19__ {int n; int len; TYPE_1__* v; int rv; } ;
typedef TYPE_2__ dl_perm ;
struct TYPE_18__ {int a; int b; int len; int y; } ;


 scalar_t__ LEN (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* dl_alloc_prm () ;
 int dl_perm_get_rev_i (TYPE_2__*,int) ;
 int dl_prm_extract (TYPE_1__*,TYPE_1__**,TYPE_1__**,TYPE_1__**,int) ;
 int dl_prm_merge (TYPE_1__**,TYPE_1__*,TYPE_1__*,int *) ;
 int dl_prm_rev_add (int *,TYPE_1__*) ;
 int dl_prm_split_node (TYPE_1__*,TYPE_1__**,TYPE_1__**,int,int *) ;
 int rand () ;

int dl_perm_move_and_create (dl_perm *pp, int id, int i) {
  if (!(0 <= id && id < pp->n)) {
    return -1;
  }
  if (!(0 <= i && i <= pp->len)) {
    return -1;
  }

  assert (dl_perm_get_rev_i (pp, id) == -1);




  dl_prm_ptr p[10] = {((void*)0)};
  if (i == pp->len) {
    p[0] = pp->v;
  } else {
    dl_prm_extract (pp->v, &p[0], &p[4], &p[1], i);
    i -= LEN (p[0]);
    dl_prm_split_node (p[1], &p[1], &p[3], i, &pp->rv);
  }

  dl_prm_ptr v = dl_alloc_prm();
  v->a = id;
  v->b = id + 1;
  v->len = v->b - v->a;
  v->y = rand();
  dl_prm_rev_add (&pp->rv, v);

  p[2] = v;

  int s;
  for (s = 0; s < 4; s++) {
    dl_prm_merge (&p[s + 1], p[s], p[s + 1], &pp->rv);
  }

  pp->v = p[4];
  pp->len++;

  return 0;
}
