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
struct err_data {char* buf; } ;
typedef  int /*<<< orphan*/  prog ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  jq_state ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  JQ_DEBUG_TRACE ; 
 scalar_t__ JV_KIND_NULL ; 
 int JV_PRINT_COLOR ; 
 int JV_PRINT_REFCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct err_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int FUNC27 () ; 
 scalar_t__ FUNC28 (char*) ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 int FUNC30 (char*) ; 
 int /*<<< orphan*/ * test_err_cb ; 

__attribute__((used)) static void FUNC31(jv lib_dirs, int verbose, FILE *testdata, int skip, int take) {
  char prog[4096];
  char buf[4096];
  struct err_data err_msg;
  int tests = 0, passed = 0, invalid = 0;
  unsigned int lineno = 0;
  int must_fail = 0;
  int check_msg = 0;
  jq_state *jq = NULL;

  int tests_to_skip = skip > 0 ? skip : 0;
  int tests_to_take = take;

  jq = FUNC7();
  FUNC0(jq);
  if (FUNC19(lib_dirs) == JV_KIND_NULL)
    lib_dirs = FUNC13();
  FUNC9(jq, FUNC23("JQ_LIBRARY_PATH"), lib_dirs);

  while (1) {
    if (!FUNC4(prog, sizeof(prog), testdata)) break;
    lineno++;
    if (FUNC28(prog)) continue;
    if (FUNC2(prog)) {
      must_fail = 1;
      check_msg = FUNC1(prog);
      FUNC10(jq, test_err_cb, &err_msg);
      continue;
    }
    if (prog[FUNC30(prog)-1] == '\n') prog[FUNC30(prog)-1] = 0;

    if (skip > 0) {
      skip--;

      // skip past test data
      while (FUNC4(buf, sizeof(buf), testdata)) {
        lineno++;
        if (buf[0] == '\n' || (buf[0] == '\r' && buf[1] == '\n'))
          break;
      }
      
      must_fail = 0;
      check_msg = 0;

      continue;
    } else if (skip == 0) {
      FUNC26("Skipped %d tests\n", tests_to_skip);
      skip = -1;
    }

    if (take > 0) {
      take--;
    } else if (take == 0) {
      FUNC26("Hit the number of tests limit (%d), breaking\n", tests_to_take);
      take = -1;
      break;
    }

    int pass = 1;
    tests++;
    FUNC26("Test #%d: '%s' at line number %u\n", tests + tests_to_skip, prog, lineno);
    int compiled = FUNC5(jq, prog);

    if (must_fail) {
      FUNC10(jq, NULL, NULL);
      if (!FUNC4(buf, sizeof(buf), testdata)) { invalid++; break; }
      lineno++;
      if (buf[FUNC30(buf)-1] == '\n') buf[FUNC30(buf)-1] = 0;
      if (compiled) {
        FUNC26("*** Test program compiled that should not have at line %u: %s\n", lineno, prog);
        must_fail = 0;
        check_msg = 0;
        invalid++;
        continue;
      }
      if (check_msg && FUNC29(buf, err_msg.buf) != 0) {
        FUNC26("*** Erroneous test program failed with wrong message (%s) at line %u: %s\n", err_msg.buf, lineno, prog);
        invalid++;
      } else {
        passed++;
      }
      must_fail = 0;
      check_msg = 0;
      continue;
    }

    if (!compiled) {
      FUNC26("*** Test program failed to compile at line %u: %s\n", lineno, prog);
      invalid++;
      // skip past test data
      while (FUNC4(buf, sizeof(buf), testdata)) {
        lineno++;
        if (buf[0] == '\n' || (buf[0] == '\r' && buf[1] == '\n'))
          break;
      }
      continue;
    }
    if (verbose) {
      FUNC26("Disassembly:\n");
      FUNC6(jq, 2);
      FUNC26("\n");
    }
    if (!FUNC4(buf, sizeof(buf), testdata)) { invalid++; break; }
    lineno++;
    jv input = FUNC21(buf);
    if (!FUNC20(input)) {
      FUNC26("*** Input is invalid on line %u: %s\n", lineno, buf);
      invalid++;
      continue;
    }
    FUNC11(jq, input, verbose ? JQ_DEBUG_TRACE : 0);

    while (FUNC4(buf, sizeof(buf), testdata)) {
      lineno++;
      if (FUNC28(buf)) break;
      jv expected = FUNC21(buf);
      if (!FUNC20(expected)) {
        FUNC26("*** Expected result is invalid on line %u: %s\n", lineno, buf);
        invalid++;
        continue;
      }
      jv actual = FUNC8(jq);
      if (!FUNC20(actual)) {
        FUNC18(actual);
        FUNC26("*** Insufficient results for test at line number %u: %s\n", lineno, prog);
        pass = 0;
        break;
      } else if (!FUNC17(FUNC14(expected), FUNC14(actual))) {
        FUNC26("*** Expected ");
        FUNC15(FUNC14(expected), 0);
        FUNC26(", but got ");
        FUNC15(FUNC14(actual), 0);
        FUNC26(" for test at line number %u: %s\n", lineno, prog);
        pass = 0;
      }
      jv as_string = FUNC16(FUNC14(expected), FUNC27() & ~(JV_PRINT_COLOR|JV_PRINT_REFCOUNT));
      jv reparsed = FUNC22(FUNC25(as_string), FUNC24(FUNC14(as_string)));
      FUNC0(FUNC17(FUNC14(expected), FUNC14(reparsed)));
      FUNC18(as_string);
      FUNC18(reparsed);
      FUNC18(expected);
      FUNC18(actual);
    }
    if (pass) {
      jv extra = FUNC8(jq);
      if (FUNC20(extra)) {
        FUNC26("*** Superfluous result: ");
        FUNC15(extra, 0);
        FUNC26(" for test at line number %u, %s\n", lineno, prog);
        pass = 0;
      } else {
        FUNC18(extra);
      }
    }
    passed+=pass;
  }
  FUNC12(&jq);

  int total_skipped = tests_to_skip;

  if (skip > 0) {
    total_skipped = tests_to_skip - skip;
  }

  FUNC26("%d of %d tests passed (%d malformed, %d skipped)\n", 
    passed, tests, invalid, total_skipped);

  if (skip > 0) {
    FUNC26("WARN: skipped past the end of file, exiting with status 2\n");
    FUNC3(2);
  }

  if (passed != tests) FUNC3(1);
}