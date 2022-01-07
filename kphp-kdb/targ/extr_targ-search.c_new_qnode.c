
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int value2; int value; int max_res; struct TYPE_6__* right; } ;
typedef TYPE_1__ query_t ;


 int INFTY ;
 int MAX_QUERY_NODES ;
 TYPE_1__* Q ;
 TYPE_1__* Qfree ;
 scalar_t__ Qw ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;

query_t *new_qnode (int type, int val) {
  query_t *A;
  if (Qfree) {
    A = Qfree;
    assert (A >= Q && A < Q + MAX_QUERY_NODES && !A->type);
    Qfree = A->right;
  } else {
    assert (Qw >= 0 && Qw <= MAX_QUERY_NODES);
    if (Qw >= MAX_QUERY_NODES) { return 0; }
    A = Q + Qw;
    Qw++;
  }
  memset (A, 0, sizeof(query_t));
  A->max_res = INFTY;
  A->type = type;
  A->value2 = A->value = val;
  return A;
}
