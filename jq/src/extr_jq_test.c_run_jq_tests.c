
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct err_data {char* buf; } ;
typedef int prog ;
typedef int jv ;
typedef int jq_state ;
typedef int buf ;
typedef int FILE ;


 int JQ_DEBUG_TRACE ;
 scalar_t__ JV_KIND_NULL ;
 int JV_PRINT_COLOR ;
 int JV_PRINT_REFCOUNT ;
 int assert (int *) ;
 int checkerrormsg (char*) ;
 scalar_t__ checkfail (char*) ;
 int exit (int) ;
 scalar_t__ fgets (char*,int,int *) ;
 int jq_compile (int *,char*) ;
 int jq_dump_disassembly (int *,int) ;
 int * jq_init () ;
 int jq_next (int *) ;
 int jq_set_attr (int *,int ,int ) ;
 int jq_set_error_cb (int *,int *,struct err_data*) ;
 int jq_start (int *,int ,int ) ;
 int jq_teardown (int **) ;
 int jv_array () ;
 int jv_copy (int ) ;
 int jv_dump (int ,int ) ;
 int jv_dump_string (int ,int) ;
 int * jv_equal (int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 scalar_t__ jv_is_valid (int ) ;
 int jv_parse (char*) ;
 int jv_parse_sized (int ,int ) ;
 int jv_string (char*) ;
 int jv_string_length_bytes (int ) ;
 int jv_string_value (int ) ;
 int printf (char*,...) ;
 int rand () ;
 scalar_t__ skipline (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int * test_err_cb ;

__attribute__((used)) static void run_jq_tests(jv lib_dirs, int verbose, FILE *testdata, int skip, int take) {
  char prog[4096];
  char buf[4096];
  struct err_data err_msg;
  int tests = 0, passed = 0, invalid = 0;
  unsigned int lineno = 0;
  int must_fail = 0;
  int check_msg = 0;
  jq_state *jq = ((void*)0);

  int tests_to_skip = skip > 0 ? skip : 0;
  int tests_to_take = take;

  jq = jq_init();
  assert(jq);
  if (jv_get_kind(lib_dirs) == JV_KIND_NULL)
    lib_dirs = jv_array();
  jq_set_attr(jq, jv_string("JQ_LIBRARY_PATH"), lib_dirs);

  while (1) {
    if (!fgets(prog, sizeof(prog), testdata)) break;
    lineno++;
    if (skipline(prog)) continue;
    if (checkfail(prog)) {
      must_fail = 1;
      check_msg = checkerrormsg(prog);
      jq_set_error_cb(jq, test_err_cb, &err_msg);
      continue;
    }
    if (prog[strlen(prog)-1] == '\n') prog[strlen(prog)-1] = 0;

    if (skip > 0) {
      skip--;


      while (fgets(buf, sizeof(buf), testdata)) {
        lineno++;
        if (buf[0] == '\n' || (buf[0] == '\r' && buf[1] == '\n'))
          break;
      }

      must_fail = 0;
      check_msg = 0;

      continue;
    } else if (skip == 0) {
      printf("Skipped %d tests\n", tests_to_skip);
      skip = -1;
    }

    if (take > 0) {
      take--;
    } else if (take == 0) {
      printf("Hit the number of tests limit (%d), breaking\n", tests_to_take);
      take = -1;
      break;
    }

    int pass = 1;
    tests++;
    printf("Test #%d: '%s' at line number %u\n", tests + tests_to_skip, prog, lineno);
    int compiled = jq_compile(jq, prog);

    if (must_fail) {
      jq_set_error_cb(jq, ((void*)0), ((void*)0));
      if (!fgets(buf, sizeof(buf), testdata)) { invalid++; break; }
      lineno++;
      if (buf[strlen(buf)-1] == '\n') buf[strlen(buf)-1] = 0;
      if (compiled) {
        printf("*** Test program compiled that should not have at line %u: %s\n", lineno, prog);
        must_fail = 0;
        check_msg = 0;
        invalid++;
        continue;
      }
      if (check_msg && strcmp(buf, err_msg.buf) != 0) {
        printf("*** Erroneous test program failed with wrong message (%s) at line %u: %s\n", err_msg.buf, lineno, prog);
        invalid++;
      } else {
        passed++;
      }
      must_fail = 0;
      check_msg = 0;
      continue;
    }

    if (!compiled) {
      printf("*** Test program failed to compile at line %u: %s\n", lineno, prog);
      invalid++;

      while (fgets(buf, sizeof(buf), testdata)) {
        lineno++;
        if (buf[0] == '\n' || (buf[0] == '\r' && buf[1] == '\n'))
          break;
      }
      continue;
    }
    if (verbose) {
      printf("Disassembly:\n");
      jq_dump_disassembly(jq, 2);
      printf("\n");
    }
    if (!fgets(buf, sizeof(buf), testdata)) { invalid++; break; }
    lineno++;
    jv input = jv_parse(buf);
    if (!jv_is_valid(input)) {
      printf("*** Input is invalid on line %u: %s\n", lineno, buf);
      invalid++;
      continue;
    }
    jq_start(jq, input, verbose ? JQ_DEBUG_TRACE : 0);

    while (fgets(buf, sizeof(buf), testdata)) {
      lineno++;
      if (skipline(buf)) break;
      jv expected = jv_parse(buf);
      if (!jv_is_valid(expected)) {
        printf("*** Expected result is invalid on line %u: %s\n", lineno, buf);
        invalid++;
        continue;
      }
      jv actual = jq_next(jq);
      if (!jv_is_valid(actual)) {
        jv_free(actual);
        printf("*** Insufficient results for test at line number %u: %s\n", lineno, prog);
        pass = 0;
        break;
      } else if (!jv_equal(jv_copy(expected), jv_copy(actual))) {
        printf("*** Expected ");
        jv_dump(jv_copy(expected), 0);
        printf(", but got ");
        jv_dump(jv_copy(actual), 0);
        printf(" for test at line number %u: %s\n", lineno, prog);
        pass = 0;
      }
      jv as_string = jv_dump_string(jv_copy(expected), rand() & ~(JV_PRINT_COLOR|JV_PRINT_REFCOUNT));
      jv reparsed = jv_parse_sized(jv_string_value(as_string), jv_string_length_bytes(jv_copy(as_string)));
      assert(jv_equal(jv_copy(expected), jv_copy(reparsed)));
      jv_free(as_string);
      jv_free(reparsed);
      jv_free(expected);
      jv_free(actual);
    }
    if (pass) {
      jv extra = jq_next(jq);
      if (jv_is_valid(extra)) {
        printf("*** Superfluous result: ");
        jv_dump(extra, 0);
        printf(" for test at line number %u, %s\n", lineno, prog);
        pass = 0;
      } else {
        jv_free(extra);
      }
    }
    passed+=pass;
  }
  jq_teardown(&jq);

  int total_skipped = tests_to_skip;

  if (skip > 0) {
    total_skipped = tests_to_skip - skip;
  }

  printf("%d of %d tests passed (%d malformed, %d skipped)\n",
    passed, tests, invalid, total_skipped);

  if (skip > 0) {
    printf("WARN: skipped past the end of file, exiting with status 2\n");
    exit(2);
  }

  if (passed != tests) exit(1);
}
