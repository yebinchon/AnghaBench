
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int jv ;
struct TYPE_6__ {int constant; } ;
struct TYPE_7__ {TYPE_1__ imm; } ;
typedef TYPE_2__ inst ;
typedef int block ;
struct TYPE_8__ {int flags; } ;


 int LOADK ;
 int OP_HAS_CONSTANT ;
 int assert (int) ;
 int inst_block (TYPE_2__*) ;
 TYPE_2__* inst_new (int ) ;
 TYPE_3__* opcode_describe (int ) ;

block gen_const(jv constant) {
  assert(opcode_describe(LOADK)->flags & OP_HAS_CONSTANT);
  inst* i = inst_new(LOADK);
  i->imm.constant = constant;
  return inst_block(i);
}
