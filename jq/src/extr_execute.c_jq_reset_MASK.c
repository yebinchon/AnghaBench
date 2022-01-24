#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ stk_top; scalar_t__ fork_top; scalar_t__ curr_frame; scalar_t__ subexp_nest; void* value_at_path; void* path; void* error_message; void* exit_code; scalar_t__ halted; void* error; int /*<<< orphan*/  stk; } ;
typedef  TYPE_1__ jq_state ;

/* Variables and functions */
 scalar_t__ JV_KIND_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(jq_state *jq) {
  while (FUNC5(jq)) {}

  FUNC0(jq->stk_top == 0);
  FUNC0(jq->fork_top == 0);
  FUNC0(jq->curr_frame == 0);
  FUNC4(&jq->stk);
  FUNC1(jq->error);
  jq->error = FUNC3();

  jq->halted = 0;
  FUNC1(jq->exit_code);
  FUNC1(jq->error_message);
  if (FUNC2(jq->path) != JV_KIND_INVALID)
    FUNC1(jq->path);
  jq->path = FUNC3();
  FUNC1(jq->value_at_path);
  jq->value_at_path = FUNC3();
  jq->subexp_nest = 0;
}