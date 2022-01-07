
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* loop; } ;
typedef TYPE_2__ codegen_scope ;
struct TYPE_6__ {struct TYPE_6__* prev; int pc3; } ;


 int OP_LOADNIL ;
 int cursp () ;
 int dispatch_linked (TYPE_2__*,int ) ;
 int genop_1 (TYPE_2__*,int ,int ) ;
 int push () ;

__attribute__((used)) static void
loop_pop(codegen_scope *s, int val)
{
  if (val) {
    genop_1(s, OP_LOADNIL, cursp());
  }
  dispatch_linked(s, s->loop->pc3);
  s->loop = s->loop->prev;
  if (val) push();
}
