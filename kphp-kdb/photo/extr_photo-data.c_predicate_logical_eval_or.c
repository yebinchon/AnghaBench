
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rhs; int lhs; } ;
typedef TYPE_1__ predicate_logical ;
typedef int actual_object ;


 scalar_t__ DL_CALL (int ,int ,int *) ;
 int eval ;

int predicate_logical_eval_or (predicate_logical *self, actual_object *ao) {
  return DL_CALL (self->lhs, eval, ao) || DL_CALL (self->rhs, eval, ao);
}
