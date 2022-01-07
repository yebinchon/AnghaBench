
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int jv ;
struct TYPE_6__ {int constant; } ;
struct TYPE_7__ {scalar_t__ any_unbound; int symbol; TYPE_1__ imm; } ;
typedef TYPE_2__ inst ;
typedef int block ;
struct TYPE_8__ {int flags; } ;


 int OP_HAS_BINDING ;
 int OP_HAS_CONSTANT ;
 int OP_HAS_VARIABLE ;
 int STORE_GLOBAL ;
 int assert (int) ;
 int inst_block (TYPE_2__*) ;
 TYPE_2__* inst_new (int ) ;
 TYPE_3__* opcode_describe (int ) ;
 int strdup (char const*) ;

block gen_const_global(jv constant, const char *name) {
  assert((opcode_describe(STORE_GLOBAL)->flags & (OP_HAS_CONSTANT | OP_HAS_VARIABLE | OP_HAS_BINDING)) ==
         (OP_HAS_CONSTANT | OP_HAS_VARIABLE | OP_HAS_BINDING));
  inst* i = inst_new(STORE_GLOBAL);
  i->imm.constant = constant;
  i->symbol = strdup(name);
  i->any_unbound = 0;
  return inst_block(i);
}
