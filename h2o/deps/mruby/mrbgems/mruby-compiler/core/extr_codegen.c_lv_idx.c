
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cdr; } ;
typedef TYPE_1__ node ;
typedef scalar_t__ mrb_sym ;
struct TYPE_6__ {TYPE_1__* lv; } ;
typedef TYPE_2__ codegen_scope ;


 scalar_t__ lv_name (TYPE_1__*) ;

__attribute__((used)) static int
lv_idx(codegen_scope *s, mrb_sym id)
{
  node *lv = s->lv;
  int n = 1;

  while (lv) {
    if (lv_name(lv) == id) return n;
    n++;
    lv = lv->cdr;
  }
  return 0;
}
