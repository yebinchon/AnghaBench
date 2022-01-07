
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct mrb_insn_data {int insn; int b; int a; } ;
struct TYPE_9__ {int lastpc; int pc; int nlocals; } ;
typedef TYPE_1__ codegen_scope ;
 int OP_NOP ;

 int genop_0 (TYPE_1__*,int ) ;
 int genop_1 (TYPE_1__*,int,int ) ;
 int genop_2 (TYPE_1__*,int,int ,int ) ;
 struct mrb_insn_data mrb_last_insn (TYPE_1__*) ;
 scalar_t__ no_peephole (TYPE_1__*) ;
 scalar_t__ on_eval (TYPE_1__*) ;

__attribute__((used)) static void
gen_move(codegen_scope *s, uint16_t dst, uint16_t src, int nopeep)
{
  if (no_peephole(s)) {
  normal:
    genop_2(s, 129, dst, src);
    if (on_eval(s)) {
      genop_0(s, OP_NOP);
    }
    return;
  }
  else {
    struct mrb_insn_data data = mrb_last_insn(s);

    switch (data.insn) {
    case 129:
      if (dst == src) return;
      if (data.b == dst && data.a == src)
        return;
      goto normal;
    case 134: case 133: case 131: case 147:
    case 136:
    case 144: case 143: case 142: case 141:
    case 140: case 139: case 138: case 137:
      if (nopeep || data.a != src || data.a < s->nlocals) goto normal;
      s->pc = s->lastpc;
      genop_1(s, data.insn, dst);
      break;
    case 146: case 145: case 135: case 132:
    case 151: case 149: case 150: case 152:
    case 153: case 128:
    case 148: case 154: case 130: case 155:
      if (nopeep || data.a != src || data.a < s->nlocals) goto normal;
      s->pc = s->lastpc;
      genop_2(s, data.insn, dst, data.b);
      break;
    default:
      goto normal;
    }
  }
}
