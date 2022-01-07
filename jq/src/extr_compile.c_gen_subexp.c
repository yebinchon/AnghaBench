
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int jv ;
struct TYPE_16__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;
struct TYPE_15__ {scalar_t__ op; } ;


 TYPE_2__ BLOCK (TYPE_2__,TYPE_2__,TYPE_2__) ;
 int DUP ;
 scalar_t__ LOADK ;
 int SUBEXP_BEGIN ;
 int SUBEXP_END ;
 int block_const (TYPE_2__) ;
 int block_free (TYPE_2__) ;
 scalar_t__ block_is_noop (TYPE_2__) ;
 scalar_t__ block_is_single (TYPE_2__) ;
 TYPE_2__ gen_op_pushk_under (int ) ;
 TYPE_2__ gen_op_simple (int ) ;

block gen_subexp(block a) {
  if (block_is_noop(a)) {
    return gen_op_simple(DUP);
  }
  if (block_is_single(a) && a.first->op == LOADK) {
    jv c = block_const(a);
    block_free(a);
    return gen_op_pushk_under(c);
  }
  return BLOCK(gen_op_simple(SUBEXP_BEGIN), a, gen_op_simple(SUBEXP_END));
}
