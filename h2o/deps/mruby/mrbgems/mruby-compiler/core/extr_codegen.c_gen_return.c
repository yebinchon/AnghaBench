
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct mrb_insn_data {scalar_t__ insn; scalar_t__ a; scalar_t__ b; } ;
struct TYPE_6__ {int lastpc; int pc; } ;
typedef TYPE_1__ codegen_scope ;


 scalar_t__ OP_MOVE ;
 scalar_t__ OP_RETURN ;
 int genop_1 (TYPE_1__*,int ,scalar_t__) ;
 struct mrb_insn_data mrb_last_insn (TYPE_1__*) ;
 scalar_t__ no_peephole (TYPE_1__*) ;

__attribute__((used)) static void
gen_return(codegen_scope *s, uint8_t op, uint16_t src)
{
  if (no_peephole(s)) {
    genop_1(s, op, src);
  }
  else {
    struct mrb_insn_data data = mrb_last_insn(s);

    if (data.insn == OP_MOVE && src == data.a) {
      s->pc = s->lastpc;
      genop_1(s, op, data.b);
    }
    else if (data.insn != OP_RETURN) {
      genop_1(s, op, src);
    }
  }
}
