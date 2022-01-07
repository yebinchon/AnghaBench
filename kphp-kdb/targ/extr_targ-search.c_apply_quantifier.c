
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int complexity; int flags; int max_res; struct TYPE_6__* left; } ;
typedef TYPE_1__ query_t ;


 int assert (TYPE_1__*) ;
 TYPE_1__* new_qnode (int,int ) ;

__attribute__((used)) static query_t *apply_quantifier (int quantifier, query_t *B) {
  query_t *A = new_qnode (quantifier, 0);

  assert (A);
  A->left = B;
  A->complexity = B->complexity * 4;
  A->max_res = B->max_res;
  A->flags = 2;

  return A;
}
