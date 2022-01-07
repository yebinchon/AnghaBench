
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int opcode ;
struct TYPE_8__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;
struct TYPE_7__ {scalar_t__ any_unbound; struct TYPE_7__* bound_by; int symbol; } ;


 int assert (int ) ;
 int block_is_single (TYPE_2__) ;
 TYPE_2__ gen_op_unbound (int ,int ) ;

block gen_op_bound(opcode op, block binder) {
  assert(block_is_single(binder));
  block b = gen_op_unbound(op, binder.first->symbol);
  b.first->bound_by = binder.first;
  b.first->any_unbound = 0;
  return b;
}
