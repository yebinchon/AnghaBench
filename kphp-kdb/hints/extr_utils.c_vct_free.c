
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mx; scalar_t__ n; int mem; } ;
typedef TYPE_1__ vector ;


 int dl_free (int ,int) ;

void vct_free (vector *v) {
  dl_free (v->mem, sizeof (int) * v->mx);
  v->mx = 0, v->n = 0;
}
