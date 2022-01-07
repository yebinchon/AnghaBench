
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* rootseg; } ;
typedef TYPE_1__ segment ;
typedef int mrb_state ;
typedef TYPE_1__ iv_tbl ;


 int mrb_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
iv_free(mrb_state *mrb, iv_tbl *t)
{
  segment *seg;

  seg = t->rootseg;
  while (seg) {
    segment *p = seg;
    seg = seg->next;
    mrb_free(mrb, p);
  }
  mrb_free(mrb, t);
}
