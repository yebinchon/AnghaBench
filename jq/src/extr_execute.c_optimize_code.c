
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bytecode {int* code; int codelen; } ;



 int bytecode_operation_length (int*) ;
 int tail_call_analyze (int*) ;

__attribute__((used)) static struct bytecode *optimize_code(struct bytecode *bc) {
  uint16_t *pc = bc->code;

  while (pc < bc->code + bc->codelen) {
    switch (*pc) {
    case 128:
      *pc = tail_call_analyze(pc);
      break;



    default: break;
    }
    pc += bytecode_operation_length(pc);
  }
  return bc;
}
