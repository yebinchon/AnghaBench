
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mx; scalar_t__ n; int mem; } ;
typedef TYPE_1__ vector ;


 int dl_malloc (int) ;

void vct_init (vector *v) {
  v->mem = dl_malloc (sizeof (int));
  v->mx = 1, v->n = 0;
}
