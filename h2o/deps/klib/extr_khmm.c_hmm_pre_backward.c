
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m; int n; int** ae; int** e; int** a; } ;
typedef TYPE_1__ hmm_par_t ;
typedef int FLOAT ;


 int assert (TYPE_1__*) ;

void hmm_pre_backward(hmm_par_t *hp)
{
 int m, n, b, k, l;
 assert(hp);
 m = hp->m; n = hp->n;
 for (b = 0; b <= m; ++b) {
  for (k = 0; k != n; ++k) {
   FLOAT *p = hp->ae[b * hp->n + k];
   for (l = 0; l != n; ++l)
    p[l] = hp->e[b][l] * hp->a[k][l];
  }
 }
}
