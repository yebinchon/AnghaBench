
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lcp; int p; } ;
typedef TYPE_1__ suffix_array_t ;


 int free (int ) ;

void suffix_array_free (suffix_array_t *A) {
  free (A->p);
  free (A->lcp);
}
