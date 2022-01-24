#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union frame_entry {int /*<<< orphan*/  localvar; int /*<<< orphan*/  closure; } ;
typedef  int /*<<< orphan*/  uint16_t ;
struct jq_state {int /*<<< orphan*/  curr_frame; int /*<<< orphan*/  stk; } ;
struct frame {union frame_entry* entries; TYPE_1__* bc; int /*<<< orphan*/  env; } ;
struct closure {TYPE_1__* bc; int /*<<< orphan*/  env; } ;
typedef  int /*<<< orphan*/  stack_ptr ;
struct TYPE_2__ {int nclosures; int nlocals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct jq_state*,int /*<<< orphan*/ *) ; 
 struct frame* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct frame* FUNC6(struct jq_state* jq, struct closure callee,
                                uint16_t* argdef, int nargs) {
  stack_ptr new_frame_idx = FUNC5(&jq->stk, jq->curr_frame, FUNC1(callee.bc));
  struct frame* new_frame = FUNC4(&jq->stk, new_frame_idx);
  new_frame->bc = callee.bc;
  new_frame->env = callee.env;
  FUNC0(nargs == new_frame->bc->nclosures);
  union frame_entry* entries = new_frame->entries;
  for (int i=0; i<nargs; i++) {
    entries->closure = FUNC3(jq, argdef + i * 2);
    entries++;
  }
  for (int i=0; i<callee.bc->nlocals; i++) {
    entries->localvar = FUNC2();
    entries++;
  }
  jq->curr_frame = new_frame_idx;
  return new_frame;
}