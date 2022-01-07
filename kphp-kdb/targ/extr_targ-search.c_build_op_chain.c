
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* last; struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef TYPE_1__ query_t ;


 int assert (int) ;
 TYPE_1__* new_qnode (int,int ) ;
 int relax_max_res (TYPE_1__*) ;

query_t *build_op_chain (int op, query_t **QA, int N) {
  assert (N >= 2);
  query_t *Q, *R, *P = new_qnode (op, 0);
  P->left = QA[N-2];
  P->right = QA[N-1];
  relax_max_res (P);
  Q = P;
  N -= 2;
  while (N) {
    R = new_qnode (op, 0);
    R->left = QA[--N];
    R->right = Q;
    Q = R;
    relax_max_res (Q);
  }
  Q->last = P;
  return Q;
}
