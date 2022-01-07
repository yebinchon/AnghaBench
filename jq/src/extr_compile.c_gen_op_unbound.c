
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int opcode ;
struct TYPE_5__ {int any_unbound; int symbol; } ;
typedef TYPE_1__ inst ;
typedef int block ;
struct TYPE_6__ {int flags; } ;


 int OP_HAS_BINDING ;
 int assert (int) ;
 int inst_block (TYPE_1__*) ;
 TYPE_1__* inst_new (int ) ;
 TYPE_2__* opcode_describe (int ) ;
 int strdup (char const*) ;

block gen_op_unbound(opcode op, const char* name) {
  assert(opcode_describe(op)->flags & OP_HAS_BINDING);
  inst* i = inst_new(op);
  i->symbol = strdup(name);
  i->any_unbound = 1;
  return inst_block(i);
}
