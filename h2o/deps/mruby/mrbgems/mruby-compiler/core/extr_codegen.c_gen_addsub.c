
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct mrb_insn_data {int insn; int b; } ;
struct TYPE_7__ {int lastpc; int pc; } ;
typedef TYPE_1__ codegen_scope ;


 int OP_ADD ;
 int OP_ADDI ;
 int OP_SUB ;
 int OP_SUBI ;
 int genop_1 (TYPE_1__*,int ,int ) ;
 int genop_2 (TYPE_1__*,int ,int ,int ) ;
 struct mrb_insn_data mrb_last_insn (TYPE_1__*) ;
 scalar_t__ no_peephole (TYPE_1__*) ;

__attribute__((used)) static void
gen_addsub(codegen_scope *s, uint8_t op, uint16_t dst)
{
  if (no_peephole(s)) {
  normal:
    genop_1(s, op, dst);
    return;
  }
  else {
    struct mrb_insn_data data = mrb_last_insn(s);

    switch (data.insn) {
    case 128:
      if (op == OP_ADD) op = OP_SUB;
      else op = OP_ADD;
      data.b = 1;
      goto replace;
    case 136: case 135: case 134: case 133:
    case 132: case 131: case 130: case 129:
      data.b = data.insn - 136;

    case 137:
    replace:
      if (data.b >= 128) goto normal;
      s->pc = s->lastpc;
      if (op == OP_ADD) {
        genop_2(s, OP_ADDI, dst, (uint8_t)data.b);
      }
      else {
        genop_2(s, OP_SUBI, dst, (uint8_t)data.b);
      }
      break;
    default:
      goto normal;
    }
  }
}
