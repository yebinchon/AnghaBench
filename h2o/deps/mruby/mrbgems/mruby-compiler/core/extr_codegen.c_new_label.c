
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastlabel; int pc; } ;
typedef TYPE_1__ codegen_scope ;



__attribute__((used)) static int
new_label(codegen_scope *s)
{
  return s->lastlabel = s->pc;
}
