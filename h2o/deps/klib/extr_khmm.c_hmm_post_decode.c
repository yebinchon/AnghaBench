
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; } ;
typedef TYPE_1__ hmm_par_t ;
struct TYPE_6__ {int* p; int L; double** f; double** b; double* s; int status; } ;
typedef TYPE_2__ hmm_data_t ;
typedef double FLOAT ;


 scalar_t__ HMM_BACKWARD ;
 int HMM_POSTDEC ;
 int assert (int) ;
 scalar_t__ calloc (int,int) ;
 int free (int*) ;

void hmm_post_decode(const hmm_par_t *hp, hmm_data_t *hd)
{
 int u, k;
 assert(hd->status && HMM_BACKWARD);
 if (hd->p) free(hd->p);
 hd->p = (int*)calloc(hd->L + 1, sizeof(int));
 for (u = 1; u <= hd->L; ++u) {
  FLOAT prob, max, *fu = hd->f[u], *bu = hd->b[u], su = hd->s[u];
  int max_k;
  for (k = 0, max = -1.0, max_k = -1; k != hp->n; ++k) {
   if (max < (prob = fu[k] * bu[k] * su)) {
    max = prob; max_k = k;
   }
  }
  assert(max_k >= 0);
  hd->p[u] = max_k;
 }
 hd->status |= HMM_POSTDEC;
}
