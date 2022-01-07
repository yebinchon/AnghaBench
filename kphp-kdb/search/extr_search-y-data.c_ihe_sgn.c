
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ word; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_6__ {scalar_t__ word; } ;
typedef TYPE_2__ iheap_en_t ;



__attribute__((used)) static inline int ihe_sgn (tree_t *T, iheap_en_t *A) {
  return T->word < A->word ? -1 : (T->word > A->word ? 1 : 0);
}
