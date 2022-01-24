#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_9__ {int state; int /*<<< orphan*/  gray_list; } ;
typedef  TYPE_1__ mrb_gc ;

/* Variables and functions */
#define  MRB_GC_STATE_MARK 130 
#define  MRB_GC_STATE_ROOT 129 
#define  MRB_GC_STATE_SWEEP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static size_t
FUNC7(mrb_state *mrb, mrb_gc *gc, size_t limit)
{
  switch (gc->state) {
  case MRB_GC_STATE_ROOT:
    FUNC6(mrb, gc);
    gc->state = MRB_GC_STATE_MARK;
    FUNC1(gc);
    return 0;
  case MRB_GC_STATE_MARK:
    if (gc->gray_list) {
      return FUNC2(mrb, gc, limit);
    }
    else {
      FUNC0(mrb, gc);
      FUNC5(mrb, gc);
      return 0;
    }
  case MRB_GC_STATE_SWEEP: {
     size_t tried_sweep = 0;
     tried_sweep = FUNC3(mrb, gc, limit);
     if (tried_sweep == 0)
       gc->state = MRB_GC_STATE_ROOT;
     return tried_sweep;
  }
  default:
    /* unknown state */
    FUNC4(0);
    return 0;
  }
}