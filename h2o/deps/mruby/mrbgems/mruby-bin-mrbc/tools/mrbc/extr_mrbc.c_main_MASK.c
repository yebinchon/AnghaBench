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
struct mrbc_args {char* prog; char* outfile; int idx; scalar_t__ check_syntax; scalar_t__ initname; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  C_EXT ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int MRB_DUMP_OK ; 
 int /*<<< orphan*/  RITEBIN_EXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mrbc_args*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct mrbc_args*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mrbc_args*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,char**,struct mrbc_args*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

int
FUNC15(int argc, char **argv)
{
  mrb_state *mrb = FUNC9();
  int n, result;
  struct mrbc_args args;
  FILE *wfp;
  mrb_value load;

  if (mrb == NULL) {
    FUNC5("Invalid mrb_state, exiting mrbc\n", stderr);
    return EXIT_FAILURE;
  }

  n = FUNC11(mrb, argc, argv, &args);
  if (n < 0) {
    FUNC0(mrb, &args);
    FUNC14(argv[0]);
    return EXIT_FAILURE;
  }
  if (n == argc) {
    FUNC4(stderr, "%s: no program file given\n", args.prog);
    return EXIT_FAILURE;
  }
  if (args.outfile == NULL && !args.check_syntax) {
    if (n + 1 == argc) {
      args.outfile = FUNC6(mrb, argv[n], args.initname ? C_EXT : RITEBIN_EXT);
    }
    else {
      FUNC4(stderr, "%s: output file should be specified to compile multiple files\n", args.prog);
      return EXIT_FAILURE;
    }
  }

  args.idx = n;
  load = FUNC7(mrb, &args);
  if (FUNC8(load)) {
    FUNC0(mrb, &args);
    return EXIT_FAILURE;
  }
  if (args.check_syntax) {
    FUNC12("%s:%s:Syntax OK\n", args.prog, argv[n]);
  }

  if (args.check_syntax) {
    FUNC0(mrb, &args);
    return EXIT_SUCCESS;
  }

  if (args.outfile) {
    if (FUNC13("-", args.outfile) == 0) {
      wfp = stdout;
    }
    else if ((wfp = FUNC3(args.outfile, "wb")) == NULL) {
      FUNC4(stderr, "%s: cannot open output file:(%s)\n", args.prog, args.outfile);
      return EXIT_FAILURE;
    }
  }
  else {
    FUNC4(stderr, "Output file is required\n");
    return EXIT_FAILURE;
  }
  result = FUNC1(mrb, wfp, args.outfile, FUNC10(load), &args);
  FUNC2(wfp);
  FUNC0(mrb, &args);
  if (result != MRB_DUMP_OK) {
    return EXIT_FAILURE;
  }
  return EXIT_SUCCESS;
}