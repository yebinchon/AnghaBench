
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct loopinfo {int type; int acc; int ensure_level; struct loopinfo* prev; scalar_t__ pc3; scalar_t__ pc2; scalar_t__ pc1; scalar_t__ pc0; } ;
typedef enum looptype { ____Placeholder_looptype } looptype ;
struct TYPE_4__ {struct loopinfo* loop; int ensure_level; } ;
typedef TYPE_1__ codegen_scope ;


 scalar_t__ codegen_palloc (TYPE_1__*,int) ;
 int cursp () ;

__attribute__((used)) static struct loopinfo*
loop_push(codegen_scope *s, enum looptype t)
{
  struct loopinfo *p = (struct loopinfo *)codegen_palloc(s, sizeof(struct loopinfo));

  p->type = t;
  p->pc0 = p->pc1 = p->pc2 = p->pc3 = 0;
  p->prev = s->loop;
  p->ensure_level = s->ensure_level;
  p->acc = cursp();
  s->loop = p;

  return p;
}
