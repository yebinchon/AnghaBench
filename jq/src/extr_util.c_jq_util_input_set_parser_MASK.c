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
typedef  int /*<<< orphan*/  jv_parser ;
struct TYPE_3__ {int /*<<< orphan*/  slurped; int /*<<< orphan*/ * parser; } ;
typedef  TYPE_1__ jq_util_input_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(jq_util_input_state *state, jv_parser *parser, int slurp) {
  FUNC0(!FUNC3(state->slurped));
  state->parser = parser;

  if (parser == NULL && slurp)
    state->slurped = FUNC4("");
  else if (slurp)
    state->slurped = FUNC1();
  else
    state->slurped = FUNC2();
}