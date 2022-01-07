
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* lcp; int n; } ;
typedef TYPE_1__ suffix_array_t ;



__attribute__((used)) static inline int get_lcp (suffix_array_t *A, int d, int f) {
  return (d + 1 == f) ? A->lcp[f] : A->lcp[A->n + 1 + ((d + f) >> 1)];
}
