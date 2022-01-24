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
struct jq_state {int /*<<< orphan*/  curr_frame; int /*<<< orphan*/  stk; } ;
struct frame {TYPE_1__* bc; } ;
struct TYPE_2__ {int nlocals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct frame* FUNC1 (struct jq_state*) ; 
 int /*<<< orphan*/ * FUNC2 (struct jq_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct jq_state* jq) {
  FUNC0(jq->curr_frame);
  struct frame* fp = FUNC1(jq);
  if (FUNC6(&jq->stk, jq->curr_frame)) {
    int nlocals = fp->bc->nlocals;
    for (int i=0; i<nlocals; i++) {
      FUNC4(*FUNC2(jq, i, 0));
    }
  }
  jq->curr_frame = FUNC5(&jq->stk, jq->curr_frame, FUNC3(fp->bc));
}