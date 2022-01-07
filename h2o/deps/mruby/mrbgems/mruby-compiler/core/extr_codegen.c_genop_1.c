
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int mrb_code ;
struct TYPE_5__ {int pc; int lastpc; } ;
typedef TYPE_1__ codegen_scope ;


 int OP_EXT1 ;
 int gen_B (TYPE_1__*,int ) ;
 int gen_S (TYPE_1__*,int) ;

__attribute__((used)) static void
genop_1(codegen_scope *s, mrb_code i, uint16_t a)
{
  s->lastpc = s->pc;
  if (a > 0xff) {
    gen_B(s, OP_EXT1);
    gen_B(s, i);
    gen_S(s, a);
  }
  else {
    gen_B(s, i);
    gen_B(s, (uint8_t)a);
  }
}
