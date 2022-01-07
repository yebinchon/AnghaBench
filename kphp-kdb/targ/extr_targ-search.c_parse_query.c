
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ complexity; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ query_t ;


 int Qs ;
 TYPE_1__* new_qnode (int ,int ) ;
 TYPE_1__* parse_queryA (int) ;
 int q_or ;
 char skip_spc () ;

query_t *parse_query (int mode) {
  query_t *A, *B, *C;
  A = parse_queryA (mode);
  if (!A) { return A; }
  while (skip_spc() == '|') {
    Qs++;
    B = parse_queryA (mode);
    if (!B) { return B; }
    C = new_qnode (q_or, 0);
    if (!C) { return C; }
    C->left = A;
    C->right = B;
    C->complexity = A->complexity + B->complexity;
    A = C;
  }
  return A;
}
