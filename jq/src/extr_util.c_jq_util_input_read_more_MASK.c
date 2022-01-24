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
struct TYPE_4__ {char* buf; size_t buf_valid_len; scalar_t__ curr_file; scalar_t__ nfiles; int /*<<< orphan*/ * current_input; int /*<<< orphan*/ * parser; scalar_t__ current_line; int /*<<< orphan*/  failures; int /*<<< orphan*/  err_cb_data; int /*<<< orphan*/  (* err_cb ) (int /*<<< orphan*/ ,char const*) ;void* current_filename; } ;
typedef  TYPE_1__ jq_util_input_state ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 () ; 
 void* FUNC9 (char const*) ; 
 char* FUNC10 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 char* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 char* FUNC14 (scalar_t__) ; 
 size_t FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC17(jq_util_input_state *state) {
  if (!state->current_input || FUNC2(state->current_input) || FUNC3(state->current_input)) {
    if (state->current_input && FUNC3(state->current_input)) {
      // System-level input error on the stream. It will be closed (below).
      // TODO: report it. Can't use 'state->err_cb()' as it is hard-coded for
      //       'open' related problems.
      FUNC6(stderr,"jq: error: %s\n", FUNC14(errno));
    }
    if (state->current_input) {
      if (state->current_input == stdin) {
        FUNC0(stdin); // perhaps we can read again; anyways, we don't fclose(stdin)
      } else {
        FUNC1(state->current_input);
      }
      state->current_input = NULL;
      FUNC7(state->current_filename);
      state->current_filename = FUNC8();
      state->current_line = 0 ;
    }
    const char *f = FUNC12(state);
    if (f != NULL) {
      if (!FUNC13(f, "-")) {
        state->current_input = stdin;
        state->current_filename = FUNC9("<stdin>");
      } else {
        state->current_input = FUNC5(f, "r");
        state->current_filename = FUNC9(f);
        if (!state->current_input) {
          state->err_cb(state->err_cb_data, f);
          state->failures++;
        }
      }
      state->current_line = 0;
    }
  }

  state->buf[0] = 0;
  state->buf_valid_len = 0;
  if (state->current_input) {
    char *res;
    FUNC11(state->buf, 0xff, sizeof(state->buf));

    while (!(res = FUNC4(state->buf, sizeof(state->buf), state->current_input)) &&
           FUNC3(state->current_input) && errno == EINTR)
      FUNC0(state->current_input);
    if (res == NULL) {
      state->buf[0] = 0;
      if (FUNC3(state->current_input))
        state->failures++;
    } else {
      const char *p = FUNC10(state->buf, '\n', sizeof(state->buf));

      if (p != NULL)
        state->current_line++;

      if (p == NULL && state->parser != NULL) {
        /*
         * There should be no NULs in JSON texts (but JSON text
         * sequences are another story).
         */
        state->buf_valid_len = FUNC15(state->buf);
      } else if (p == NULL && FUNC2(state->current_input)) {
        size_t i;

        /*
         * XXX We don't know how many bytes we've read!
         *
         * We can't use getline() because there need not be any newlines
         * in the input.  The only entirely correct choices are: use
         * fgetc() or fread().  Using fread() will complicate buffer
         * management here.
         *
         * For now we check how much fgets() read by scanning backwards for the
         * terminating '\0'. This only works because we previously memset our
         * buffer with something nonzero.
         */
        for (p = state->buf, i = sizeof(state->buf) - 1; i > 0; i--) {
          if (state->buf[i] == '\0')
            break;
        }
        state->buf_valid_len = i;
      } else if (p == NULL) {
        state->buf_valid_len = sizeof(state->buf) - 1;
      } else {
        state->buf_valid_len = (p - state->buf) + 1;
      }
    }
  }
  return state->curr_file == state->nfiles &&
      (!state->current_input || FUNC2(state->current_input) || FUNC3(state->current_input));
}