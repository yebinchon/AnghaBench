
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int mrb_code ;
struct TYPE_5__ {int pc; int lastpc; } ;
typedef TYPE_1__ codegen_scope ;


 int gen_B (TYPE_1__*,int ) ;
 int gen_S (TYPE_1__*,int ) ;

__attribute__((used)) static uint16_t
genjmp(codegen_scope *s, mrb_code i, uint16_t pc)
{
  uint16_t pos;

  s->lastpc = s->pc;
  gen_B(s, i);
  pos = s->pc;
  gen_S(s, pc);
  return pos;
}
