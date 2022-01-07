
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int opcode ;
struct TYPE_7__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {struct TYPE_6__* bound_by; } ;


 int OP_HAS_VARIABLE ;
 int assert (int) ;
 TYPE_2__ gen_op_unbound (int ,char const*) ;
 TYPE_3__* opcode_describe (int ) ;

block gen_op_var_fresh(opcode op, const char* name) {
  assert(opcode_describe(op)->flags & OP_HAS_VARIABLE);
  block b = gen_op_unbound(op, name);
  b.first->bound_by = b.first;
  return b;
}
