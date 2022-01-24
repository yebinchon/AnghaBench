#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct forkpoint {scalar_t__ saved_data_stack; scalar_t__ saved_curr_frame; int path_len; int /*<<< orphan*/  subexp_nest; int /*<<< orphan*/  value_at_path; int /*<<< orphan*/ * return_address; } ;
struct TYPE_5__ {scalar_t__ fork_top; scalar_t__ stk_top; scalar_t__ curr_frame; int /*<<< orphan*/  stk; int /*<<< orphan*/  subexp_nest; int /*<<< orphan*/  value_at_path; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ jq_state ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct forkpoint* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

uint16_t* FUNC9(jq_state *jq){
  while (!FUNC8(&jq->stk, jq->fork_top)) {
    if (FUNC8(&jq->stk, jq->stk_top)) {
      FUNC3(FUNC6(jq));
    } else if (FUNC8(&jq->stk, jq->curr_frame)) {
      FUNC1(jq);
    } else {
      FUNC0(0);
    }
  }

  if (jq->fork_top == 0) {
    return 0;
  }

  struct forkpoint* fork = FUNC5(&jq->stk, jq->fork_top);
  uint16_t* retaddr = fork->return_address;
  jq->stk_top = fork->saved_data_stack;
  jq->curr_frame = fork->saved_curr_frame;
  int path_len = fork->path_len;
  if (FUNC4(jq->path) == JV_KIND_ARRAY) {
    FUNC0(path_len >= 0);
    jq->path = FUNC2(jq->path, 0, path_len);
  } else {
    fork->path_len = 0;
  }
  FUNC3(jq->value_at_path);
  jq->value_at_path = fork->value_at_path;
  jq->subexp_nest = fork->subexp_nest;
  jq->fork_top = FUNC7(&jq->stk, jq->fork_top, sizeof(struct forkpoint));
  return retaddr;
}