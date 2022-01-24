#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_3__ {int /*<<< orphan*/  stk_top; int /*<<< orphan*/  stk; } ;
typedef  TYPE_1__ jq_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

jv FUNC6(jq_state *jq) {
  jv* sval = FUNC3(&jq->stk, jq->stk_top);
  jv val = *sval;
  if (!FUNC5(&jq->stk, jq->stk_top)) {
    *sval = FUNC2();
  }
  jq->stk_top = FUNC4(&jq->stk, jq->stk_top, sizeof(jv));
  FUNC0(FUNC1(val));
  return val;
}