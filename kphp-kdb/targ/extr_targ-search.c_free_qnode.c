
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; int type; } ;
typedef TYPE_1__ query_t ;


 TYPE_1__* Qfree ;
 int q_none ;

void free_qnode (query_t *Q) {
  Q->type = q_none;
  Q->right = Qfree;
  Qfree = Q;
}
