#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  jq_state ;

/* Variables and functions */
 int ASCII_OUTPUT ; 
 int EXIT_STATUS_EXACT ; 
 int JQ_ERROR_UNKNOWN ; 
 int JQ_OK ; 
 int JQ_OK_NO_OUTPUT ; 
 int JQ_OK_NULL_KIND ; 
 scalar_t__ JV_KIND_FALSE ; 
 scalar_t__ JV_KIND_NULL ; 
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  JV_PRINT_ASCII ; 
 int JV_PRINT_ISATTY ; 
 int RAW_NO_LF ; 
 int RAW_OUTPUT ; 
 int SEQ ; 
 int UNBUFFERED_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 int options ; 
 int /*<<< orphan*/  FUNC21 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC22(jq_state *jq, jv value, int flags, int dumpopts) {
  int ret = JQ_OK_NO_OUTPUT; // No valid results && -e -> exit(4)
  FUNC7(jq, value, flags);
  jv result;
  while (FUNC17(result = FUNC6(jq))) {
    if ((options & RAW_OUTPUT) && FUNC14(result) == JV_KIND_STRING) {
      if (options & ASCII_OUTPUT) {
        FUNC12(FUNC9(result), stdout, JV_PRINT_ASCII);
      } else {
        FUNC2(FUNC20(result), 1, FUNC19(FUNC9(result)), stdout);
      }
      ret = JQ_OK;
      FUNC13(result);
    } else {
      if (FUNC14(result) == JV_KIND_FALSE || FUNC14(result) == JV_KIND_NULL)
        ret = JQ_OK_NULL_KIND;
      else
        ret = JQ_OK;
      if (options & SEQ)
        FUNC21("\036", 1, stdout, dumpopts & JV_PRINT_ISATTY);
      FUNC10(result, dumpopts);
    }
    if (!(options & RAW_NO_LF))
      FUNC21("\n", 1, stdout, dumpopts & JV_PRINT_ISATTY);
    if (options & UNBUFFERED_OUTPUT)
      FUNC0(stdout);
  }
  if (FUNC5(jq)) {
    // jq program invoked `halt` or `halt_error`
    options |= EXIT_STATUS_EXACT;
    jv exit_code = FUNC4(jq);
    if (!FUNC17(exit_code))
      ret = JQ_OK;
    else if (FUNC14(exit_code) == JV_KIND_NUMBER)
      ret = FUNC18(exit_code);
    else
      ret = JQ_ERROR_UNKNOWN;
    FUNC13(exit_code);
    jv error_message = FUNC3(jq);
    if (FUNC14(error_message) == JV_KIND_STRING) {
      FUNC1(stderr, "jq: error: %s", FUNC20(error_message));
    } else if (FUNC14(error_message) == JV_KIND_NULL) {
      // Halt with no output
    } else if (FUNC17(error_message)) {
      error_message = FUNC11(FUNC9(error_message), 0);
      FUNC1(stderr, "jq: error: %s\n", FUNC20(error_message));
    } // else no message on stderr; use --debug-trace to see a message
    FUNC0(stderr);
    FUNC13(error_message);
  } else if (FUNC16(FUNC9(result))) {
    // Uncaught jq exception
    jv msg = FUNC15(FUNC9(result));
    jv input_pos = FUNC8(jq);
    if (FUNC14(msg) == JV_KIND_STRING) {
      FUNC1(stderr, "jq: error (at %s): %s\n",
              FUNC20(input_pos), FUNC20(msg));
    } else {
      msg = FUNC11(msg, 0);
      FUNC1(stderr, "jq: error (at %s) (not a string): %s\n",
              FUNC20(input_pos), FUNC20(msg));
    }
    ret = JQ_ERROR_UNKNOWN;
    FUNC13(input_pos);
    FUNC13(msg);
  }
  FUNC13(result);
  return ret;
}