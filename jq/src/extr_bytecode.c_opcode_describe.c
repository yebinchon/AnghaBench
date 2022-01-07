
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opcode_description {int dummy; } ;
typedef size_t opcode ;


 int NUM_OPCODES ;
 struct opcode_description const invalid_opcode_description ;
 struct opcode_description const* opcode_descriptions ;

const struct opcode_description* opcode_describe(opcode op) {
  if ((int)op >= 0 && (int)op < NUM_OPCODES) {
    return &opcode_descriptions[op];
  } else {
    return &invalid_opcode_description;
  }
}
