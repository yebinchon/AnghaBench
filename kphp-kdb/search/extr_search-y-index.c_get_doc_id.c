
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int doc_id; } ;
typedef TYPE_1__ pair_t ;


 int curword_docs ;
 int tot_items ;

__attribute__((used)) static inline int get_doc_id (pair_t *P, int *O, int m) {
  if (m <= 0) {
    return -1;
  }
  if (m > curword_docs) {
    return tot_items;
  }
  return P[O[m]].doc_id;
}
