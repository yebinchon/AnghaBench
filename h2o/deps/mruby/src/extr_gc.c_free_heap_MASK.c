#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_12__ {struct TYPE_12__* next; } ;
typedef  TYPE_3__ mrb_heap_page ;
struct TYPE_13__ {TYPE_3__* heaps; } ;
typedef  TYPE_4__ mrb_gc ;
struct TYPE_10__ {scalar_t__ tt; } ;
struct TYPE_11__ {int /*<<< orphan*/  basic; TYPE_1__ free; } ;
struct TYPE_14__ {TYPE_2__ as; } ;
typedef  TYPE_5__ RVALUE ;

/* Variables and functions */
 int MRB_HEAP_PAGE_SIZE ; 
 scalar_t__ MRB_TT_FREE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_3__*) ; 

void
FUNC3(mrb_state *mrb, mrb_gc *gc)
{
  mrb_heap_page *page = gc->heaps;
  mrb_heap_page *tmp;
  RVALUE *p, *e;

  while (page) {
    tmp = page;
    page = page->next;
    for (p = FUNC2(tmp), e=p+MRB_HEAP_PAGE_SIZE; p<e; p++) {
      if (p->as.free.tt != MRB_TT_FREE)
        FUNC1(mrb, &p->as.basic, TRUE);
    }
    FUNC0(mrb, tmp);
  }
}