
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_8__ {int len; int rv; int v; scalar_t__ n; } ;
typedef TYPE_2__ dl_perm ;
struct TYPE_7__ {int y; scalar_t__ a; scalar_t__ b; scalar_t__ len; } ;


 int assert (int) ;
 TYPE_1__* dl_alloc_prm () ;
 int dl_prm_merge (int *,int ,TYPE_1__*,int *) ;
 int dl_prm_rev_add (int *,TYPE_1__*) ;
 int rand () ;
 scalar_t__ unlikely (int) ;

void dl_perm_inc_pass (dl_perm *p, int n, int pass_n) {
  if (unlikely (n <= 0)) {
    return;
  }
  assert (pass_n <= n);

  if (pass_n == n) {
    p->n += n;
    return;
  }

  dl_prm_ptr v = dl_alloc_prm();
  v->a = p->n + pass_n;
  p->n += n;
  p->len += n - pass_n;
  v->b = p->n;
  v->len = v->b - v->a;
  v->y = rand();
  dl_prm_rev_add (&p->rv, v);
  dl_prm_merge (&p->v, p->v, v, &p->rv);
}
