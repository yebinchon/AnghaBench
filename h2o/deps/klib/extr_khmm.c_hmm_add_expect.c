
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m; int n; scalar_t__** E; scalar_t__** A; scalar_t__* A0; } ;
typedef TYPE_1__ hmm_exp_t ;


 int assert (int) ;

void hmm_add_expect(const hmm_exp_t *he0, hmm_exp_t *he1)
{
 int b, k, l;
 assert(he0->m == he1->m && he0->n == he1->n);
 for (k = 0; k != he1->n; ++k) {
  he1->A0[k] += he0->A0[k];
  for (l = 0; l != he1->n; ++l)
   he1->A[k][l] += he0->A[k][l];
 }
 for (b = 0; b != he1->m; ++b) {
  for (l = 0; l != he1->n; ++l)
   he1->E[b][l] += he0->E[b][l];
 }
}
