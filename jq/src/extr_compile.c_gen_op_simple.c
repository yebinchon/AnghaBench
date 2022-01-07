
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int opcode ;
typedef int block ;
struct TYPE_2__ {int length; } ;


 int assert (int) ;
 int inst_block (int ) ;
 int inst_new (int ) ;
 TYPE_1__* opcode_describe (int ) ;

block gen_op_simple(opcode op) {
  assert(opcode_describe(op)->length == 1);
  return inst_block(inst_new(op));
}
