
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_code ;
struct TYPE_4__ {int pc; int lastpc; } ;
typedef TYPE_1__ codegen_scope ;


 int gen_B (TYPE_1__*,int ) ;

__attribute__((used)) static void
genop_0(codegen_scope *s, mrb_code i)
{
  s->lastpc = s->pc;
  gen_B(s, i);
}
