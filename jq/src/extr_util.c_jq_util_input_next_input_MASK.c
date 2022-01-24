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
typedef  void* jv ;
struct TYPE_4__ {scalar_t__ buf_valid_len; char* buf; void* slurped; int /*<<< orphan*/ * parser; } ;
typedef  TYPE_1__ jq_util_input_state ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 void* FUNC9 (char*) ; 
 void* FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 

jv FUNC12(jq_util_input_state *state) {
  int is_last = 0;
  int has_more = 0;
  jv value = FUNC3(); // need more input
  do {
    if (state->parser == NULL) {
      // Raw input
      is_last = FUNC0(state);
      if (state->buf_valid_len == 0)
        continue;
      if (FUNC5(state->slurped)) {
        // Slurped raw input
        state->slurped = FUNC10(state->slurped, FUNC11(state->buf, state->buf_valid_len));
      } else {
        if (!FUNC5(value))
          value = FUNC9("");
        if (state->buf[state->buf_valid_len-1] == '\n') {
          // whole line
          state->buf[state->buf_valid_len-1] = 0;
          return FUNC10(value, FUNC11(state->buf, state->buf_valid_len-1));
        }
        value = FUNC10(value, FUNC11(state->buf, state->buf_valid_len));
        state->buf[0] = '\0';
        state->buf_valid_len = 0;
      }
    } else {
      if (FUNC7(state->parser) == 0) {
        is_last = FUNC0(state);
        if (is_last && state->buf_valid_len == 0)
          value = FUNC3();
        FUNC8(state->parser, state->buf, state->buf_valid_len, !is_last);
      }
      value = FUNC6(state->parser);
      if (FUNC5(state->slurped)) {
        // When slurping an input that doesn't have a trailing newline,
        // we might have more than one value on the same line, so let's check
        // to see if we have more data to parse.
        has_more = FUNC7(state->parser);
        if (FUNC5(value)) {
          state->slurped = FUNC1(state->slurped, value);
          value = FUNC3();
        } else if (FUNC4(FUNC2(value)))
          return value; // Not slurped parsed input
      } else if (FUNC5(value) || FUNC4(FUNC2(value))) {
        return value;
      }
    }
  } while (!is_last || has_more);

  if (FUNC5(state->slurped)) {
    value = state->slurped;
    state->slurped = FUNC3();
  }
  return value;
}