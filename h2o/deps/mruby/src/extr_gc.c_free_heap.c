
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_12__ {struct TYPE_12__* next; } ;
typedef TYPE_3__ mrb_heap_page ;
struct TYPE_13__ {TYPE_3__* heaps; } ;
typedef TYPE_4__ mrb_gc ;
struct TYPE_10__ {scalar_t__ tt; } ;
struct TYPE_11__ {int basic; TYPE_1__ free; } ;
struct TYPE_14__ {TYPE_2__ as; } ;
typedef TYPE_5__ RVALUE ;


 int MRB_HEAP_PAGE_SIZE ;
 scalar_t__ MRB_TT_FREE ;
 int TRUE ;
 int mrb_free (int *,TYPE_3__*) ;
 int obj_free (int *,int *,int ) ;
 TYPE_5__* objects (TYPE_3__*) ;

void
free_heap(mrb_state *mrb, mrb_gc *gc)
{
  mrb_heap_page *page = gc->heaps;
  mrb_heap_page *tmp;
  RVALUE *p, *e;

  while (page) {
    tmp = page;
    page = page->next;
    for (p = objects(tmp), e=p+MRB_HEAP_PAGE_SIZE; p<e; p++) {
      if (p->as.free.tt != MRB_TT_FREE)
        obj_free(mrb, &p->as.basic, TRUE);
    }
    mrb_free(mrb, tmp);
  }
}
