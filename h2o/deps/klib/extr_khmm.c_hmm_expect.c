
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int m; int n; int** ae; int* a0; int** e; } ;
typedef TYPE_1__ hmm_par_t ;
struct TYPE_10__ {int** A; int** E; int* A0; } ;
typedef TYPE_2__ hmm_exp_t ;
struct TYPE_11__ {int status; int L; int** f; int** b; int* s; scalar_t__* seq; } ;
typedef TYPE_3__ hmm_data_t ;
typedef int FLOAT ;


 int HMM_BACKWARD ;
 void* HMM_TINY ;
 int assert (int) ;
 TYPE_2__* hmm_new_exp (TYPE_1__ const*) ;

hmm_exp_t *hmm_expect(const hmm_par_t *hp, const hmm_data_t *hd)
{
 int k, l, u, b, m, n;
 hmm_exp_t *he;
 assert(hd->status & HMM_BACKWARD);
 he = hmm_new_exp(hp);

 m = hp->m; n = hp->n;
 for (k = 0; k != n; ++k)
  for (l = 0; l != n; ++l) he->A[k][l] = HMM_TINY;
 for (b = 0; b <= m; ++b)
  for (l = 0; l != n; ++l) he->E[b][l] = HMM_TINY;

 for (u = 1; u < hd->L; ++u) {
  FLOAT *fu = hd->f[u], *bu = hd->b[u], *bu1 = hd->b[u+1], ss = hd->s[u];
  FLOAT *Ec = he->E[(int)hd->seq[u]], **p = hp->ae + (int)hd->seq[u+1] * n;
  for (k = 0; k != n; ++k) {
   FLOAT *q = p[k], *AA = he->A[k], fuk = fu[k];
   for (l = 0; l != n; ++l)
    AA[l] += fuk * q[l] * bu1[l];
   Ec[k] += fuk * bu[k] * ss;
  }
 }

 for (l = 0; l != n; ++l)
  he->A0[l] += hp->a0[l] * hp->e[(int)hd->seq[1]][l] * hd->b[1][l];
 return he;
}
