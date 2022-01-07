
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mx; int n; int* mem; } ;
typedef TYPE_1__ vector ;


 int* qrealloc (int*,int,int) ;

void vct_add (vector *v, int x) {
  if (v->mx == v->n) {
    v->mem = qrealloc (v->mem, sizeof (int) * v->mx * 2, sizeof (int) * v->mx);
    v->mx *= 2;
  }
  v->mem[v->n++] = x;
}
