
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* last; } ;
struct TYPE_4__ {int referenced; scalar_t__ op; TYPE_2__ subfn; TYPE_2__ arglist; struct TYPE_4__* bound_by; struct TYPE_4__* prev; } ;
typedef TYPE_1__ inst ;
typedef TYPE_2__ block ;


 scalar_t__ TOP ;

__attribute__((used)) static void block_mark_referenced(block body) {
  int saw_top = 0;
  for (inst* i = body.last; i; i = i->prev) {
    if (saw_top && i->bound_by == i && !i->referenced)
      continue;
    if (i->op == TOP) {
      saw_top = 1;
    }
    if (i->bound_by) {
      i->bound_by->referenced = 1;
    }

    block_mark_referenced(i->arglist);
    block_mark_referenced(i->subfn);
  }
}
